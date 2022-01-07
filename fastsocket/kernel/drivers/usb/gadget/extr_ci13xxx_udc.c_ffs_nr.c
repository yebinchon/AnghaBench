
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ffs (int ) ;

__attribute__((used)) static int ffs_nr(u32 x)
{
 int n = ffs(x);

 return n ? n-1 : 32;
}
