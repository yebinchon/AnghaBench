
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct fde_vector {size_t count; int ** array; } ;
typedef int fde_compare_t ;
typedef int fde ;


 int SWAP (int const*,int const*) ;
 int frame_downheap (struct object*,int ,int const**,int,int) ;

__attribute__((used)) static void
frame_heapsort (struct object *ob, fde_compare_t fde_compare,
  struct fde_vector *erratic)
{



  const fde ** a = erratic->array;



  size_t n = erratic->count;
  int m;




  for (m = n/2-1; m >= 0; --m)
    frame_downheap (ob, fde_compare, a, m, n);




  for (m = n-1; m >= 1; --m)
    {
      SWAP (a[0], a[m]);
      frame_downheap (ob, fde_compare, a, 0, m);
    }

}
