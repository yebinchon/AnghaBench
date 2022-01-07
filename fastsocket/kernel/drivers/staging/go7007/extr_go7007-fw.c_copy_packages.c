
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __le16 ;


 int cpu_to_le16p (int *) ;

__attribute__((used)) static int copy_packages(__le16 *dest, u16 *src, int pkg_cnt, int space)
{
 int i, cnt = pkg_cnt * 32;

 if (space < cnt)
  return -1;

 for (i = 0; i < cnt; ++i)
  dest[i] = cpu_to_le16p(src + i);

 return cnt;
}
