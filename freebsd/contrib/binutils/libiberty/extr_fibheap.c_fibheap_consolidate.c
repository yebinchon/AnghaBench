
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef TYPE_2__* fibheap_t ;
struct TYPE_16__ {TYPE_1__* min; TYPE_1__* root; } ;
struct TYPE_15__ {int degree; } ;


 scalar_t__ fibheap_compare (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int fibheap_ins_root (TYPE_2__*,TYPE_1__*) ;
 int fibheap_link (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int fibheap_rem_root (TYPE_2__*,TYPE_1__*) ;
 int memset (TYPE_1__**,int ,int) ;

__attribute__((used)) static void
fibheap_consolidate (fibheap_t heap)
{
  fibnode_t a[1 + 8 * sizeof (long)];
  fibnode_t w;
  fibnode_t y;
  fibnode_t x;
  int i;
  int d;
  int D;

  D = 1 + 8 * sizeof (long);

  memset (a, 0, sizeof (fibnode_t) * D);

  while ((w = heap->root) != ((void*)0))
    {
      x = w;
      fibheap_rem_root (heap, w);
      d = x->degree;
      while (a[d] != ((void*)0))
 {
   y = a[d];
   if (fibheap_compare (heap, x, y) > 0)
     {
       fibnode_t temp;
       temp = x;
       x = y;
       y = temp;
     }
   fibheap_link (heap, y, x);
   a[d] = ((void*)0);
   d++;
 }
      a[d] = x;
    }
  heap->min = ((void*)0);
  for (i = 0; i < D; i++)
    if (a[i] != ((void*)0))
      {
 fibheap_ins_root (heap, a[i]);
 if (heap->min == ((void*)0) || fibheap_compare (heap, a[i], heap->min) < 0)
   heap->min = a[i];
      }
}
