
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int dn_match_addr(__le16 addr1, __le16 addr2)
{
 __u16 tmp = le16_to_cpu(addr1) ^ le16_to_cpu(addr2);
 int match = 16;
 while(tmp) {
  tmp >>= 1;
  match--;
 }
 return match;
}
