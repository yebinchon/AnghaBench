
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
typedef scalar_t__ (* fde_compare_t ) (struct object*,int const*,int const*) ;
typedef int fde ;


 int SWAP (int const*,int const*) ;

__attribute__((used)) static void
frame_downheap (struct object *ob, fde_compare_t fde_compare, const fde **a,
  int lo, int hi)
{
  int i, j;

  for (i = lo, j = 2*i+1;
       j < hi;
       j = 2*i+1)
    {
      if (j+1 < hi && fde_compare (ob, a[j], a[j+1]) < 0)
 ++j;

      if (fde_compare (ob, a[i], a[j]) < 0)
 {
   SWAP (a[i], a[j]);
   i = j;
 }
      else
 break;
    }
}
