
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const u_int8_t ;
struct sk_buff {int dummy; } ;
struct dccp_hdr {int dccph_doff; } ;


 int __dccp_hdr_len (struct dccp_hdr const*) ;
 int dccp_buflock ;
 int dccp_optbuf ;
 unsigned char* skb_header_pointer (struct sk_buff const*,unsigned int,unsigned int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline bool
dccp_find_option(u_int8_t option,
   const struct sk_buff *skb,
   unsigned int protoff,
   const struct dccp_hdr *dh,
   bool *hotdrop)
{

 const unsigned char *op;
 unsigned int optoff = __dccp_hdr_len(dh);
 unsigned int optlen = dh->dccph_doff*4 - __dccp_hdr_len(dh);
 unsigned int i;

 if (dh->dccph_doff * 4 < __dccp_hdr_len(dh))
  goto invalid;

 if (!optlen)
  return 0;

 spin_lock_bh(&dccp_buflock);
 op = skb_header_pointer(skb, protoff + optoff, optlen, dccp_optbuf);
 if (op == ((void*)0)) {

  goto partial;
 }

 for (i = 0; i < optlen; ) {
  if (op[i] == option) {
   spin_unlock_bh(&dccp_buflock);
   return 1;
  }

  if (op[i] < 2)
   i++;
  else
   i += op[i+1]?:1;
 }

 spin_unlock_bh(&dccp_buflock);
 return 0;

partial:
 spin_unlock_bh(&dccp_buflock);
invalid:
 *hotdrop = 1;
 return 0;
}
