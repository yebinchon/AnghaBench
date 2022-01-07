
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int export_type ;


 int d_nfuncs ;

__attribute__((used)) static void
remove_null_names (export_type **ptr)
{
  int src;
  int dst;

  for (dst = src = 0; src < d_nfuncs; src++)
    {
      if (ptr[src])
 {
   ptr[dst] = ptr[src];
   dst++;
 }
    }
  d_nfuncs = dst;
}
