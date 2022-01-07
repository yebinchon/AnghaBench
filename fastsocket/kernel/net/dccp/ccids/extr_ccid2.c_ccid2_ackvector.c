
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_hdr {int dccph_doff; } ;


 int BUG_ON (int) ;


 unsigned char DCCPO_MAX_RESERVED ;
 int DCCP_BUG (char*) ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 int dccp_hdr_len (struct sk_buff*) ;

__attribute__((used)) static int ccid2_ackvector(struct sock *sk, struct sk_buff *skb, int offset,
      unsigned char **vec, unsigned char *veclen)
{
 const struct dccp_hdr *dh = dccp_hdr(skb);
 unsigned char *options = (unsigned char *)dh + dccp_hdr_len(skb);
 unsigned char *opt_ptr;
 const unsigned char *opt_end = (unsigned char *)dh +
     (dh->dccph_doff * 4);
 unsigned char opt, len;
 unsigned char *value;

 BUG_ON(offset < 0);
 options += offset;
 opt_ptr = options;
 if (opt_ptr >= opt_end)
  return -1;

 while (opt_ptr != opt_end) {
  opt = *opt_ptr++;
  len = 0;
  value = ((void*)0);


  if (opt > DCCPO_MAX_RESERVED) {
   if (opt_ptr == opt_end)
    goto out_invalid_option;

   len = *opt_ptr++;
   if (len < 3)
    goto out_invalid_option;




   len -= 2;
   value = opt_ptr;
   opt_ptr += len;

   if (opt_ptr > opt_end)
    goto out_invalid_option;
  }

  switch (opt) {
  case 129:
  case 128:
   *vec = value;
   *veclen = len;
   return offset + (opt_ptr - options);
  }
 }

 return -1;

out_invalid_option:
 DCCP_BUG("Invalid option - this should not happen (previous parsing)!");
 return -1;
}
