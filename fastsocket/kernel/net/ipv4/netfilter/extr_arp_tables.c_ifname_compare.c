
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;


 int IFNAMSIZ ;
 unsigned long ifname_compare_aligned (char const*,char const*,char const*) ;

__attribute__((used)) static unsigned long ifname_compare(const char *_a, const char *_b, const char *_mask)
{



 unsigned long ret = 0;
 const u16 *a = (const u16 *)_a;
 const u16 *b = (const u16 *)_b;
 const u16 *mask = (const u16 *)_mask;
 int i;

 for (i = 0; i < IFNAMSIZ/sizeof(u16); i++)
  ret |= (a[i] ^ b[i]) & mask[i];

 return ret;
}
