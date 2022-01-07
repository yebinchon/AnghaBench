
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_state {struct ipcomp_data* data; } ;
struct sk_buff {int len; int * data; } ;
struct ipcomp_data {int tfms; } ;
struct ip_comp_hdr {int dummy; } ;
struct crypto_comp {int dummy; } ;


 int EMSGSIZE ;
 int IPCOMP_SCRATCH_SIZE ;
 int crypto_comp_compress (struct crypto_comp*,int *,int const,int *,int*) ;
 int get_cpu () ;
 int ipcomp_scratches ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int memcpy (int *,int *,int) ;
 void** per_cpu_ptr (int ,int const) ;
 int pskb_trim (struct sk_buff*,int) ;
 int put_cpu () ;

__attribute__((used)) static int ipcomp_compress(struct xfrm_state *x, struct sk_buff *skb)
{
 struct ipcomp_data *ipcd = x->data;
 const int plen = skb->len;
 int dlen = IPCOMP_SCRATCH_SIZE;
 u8 *start = skb->data;
 const int cpu = get_cpu();
 u8 *scratch = *per_cpu_ptr(ipcomp_scratches, cpu);
 struct crypto_comp *tfm = *per_cpu_ptr(ipcd->tfms, cpu);
 int err;

 local_bh_disable();
 err = crypto_comp_compress(tfm, start, plen, scratch, &dlen);
 local_bh_enable();
 if (err)
  goto out;

 if ((dlen + sizeof(struct ip_comp_hdr)) >= plen) {
  err = -EMSGSIZE;
  goto out;
 }

 memcpy(start + sizeof(struct ip_comp_hdr), scratch, dlen);
 put_cpu();

 pskb_trim(skb, dlen + sizeof(struct ip_comp_hdr));
 return 0;

out:
 put_cpu();
 return err;
}
