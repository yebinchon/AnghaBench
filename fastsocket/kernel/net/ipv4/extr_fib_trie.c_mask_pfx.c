
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short t_key ;


 unsigned short KEYLENGTH ;

__attribute__((used)) static inline t_key mask_pfx(t_key k, unsigned short l)
{
 return (l == 0) ? 0 : k >> (KEYLENGTH-l) << (KEYLENGTH-l);
}
