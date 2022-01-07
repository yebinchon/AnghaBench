
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hlist_head {int dummy; } ;
struct TYPE_3__ {int use; } ;
struct TYPE_4__ {int status; TYPE_1__ ct_general; int * ct_net; } ;


 int IPS_CONFIRMED_BIT ;
 int NF_CONNTRACK_VERSION ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int atomic_set (int *,int) ;
 int init_net ;
 int nf_conntrack_helper_init () ;
 int nf_conntrack_htable_size ;
 int nf_conntrack_max ;
 int nf_conntrack_proto_fini () ;
 int nf_conntrack_proto_init () ;
 TYPE_2__ nf_conntrack_untracked ;
 int printk (char*,int ,int,int) ;
 int set_bit (int ,int *) ;
 int totalram_pages ;

__attribute__((used)) static int nf_conntrack_init_init_net(void)
{
 int max_factor = 8;
 int ret;



 if (!nf_conntrack_htable_size) {
  nf_conntrack_htable_size
   = (((totalram_pages << PAGE_SHIFT) / 16384)
      / sizeof(struct hlist_head));
  if (totalram_pages > (1024 * 1024 * 1024 / PAGE_SIZE))
   nf_conntrack_htable_size = 16384;
  if (nf_conntrack_htable_size < 32)
   nf_conntrack_htable_size = 32;





  max_factor = 4;
 }
 nf_conntrack_max = max_factor * nf_conntrack_htable_size;

 printk("nf_conntrack version %s (%u buckets, %d max)\n",
        NF_CONNTRACK_VERSION, nf_conntrack_htable_size,
        nf_conntrack_max);

 ret = nf_conntrack_proto_init();
 if (ret < 0)
  goto err_proto;

 ret = nf_conntrack_helper_init();
 if (ret < 0)
  goto err_helper;





 atomic_set(&nf_conntrack_untracked.ct_general.use, 1);

 set_bit(IPS_CONFIRMED_BIT, &nf_conntrack_untracked.status);

 return 0;

err_helper:
 nf_conntrack_proto_fini();
err_proto:
 return ret;
}
