
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int htonl (int) ;

__attribute__((used)) static __inline__ __be32 addr_bit_set(void *token, int fn_bit)
{
 __be32 *addr = token;

 return htonl(1 << ((~fn_bit)&0x1F)) & addr[fn_bit>>5];
}
