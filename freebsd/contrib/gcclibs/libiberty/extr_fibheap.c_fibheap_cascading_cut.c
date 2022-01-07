
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef int fibheap_t ;
struct TYPE_5__ {int mark; struct TYPE_5__* parent; } ;


 int fibheap_cut (int ,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void
fibheap_cascading_cut (fibheap_t heap, fibnode_t y)
{
  fibnode_t z;

  while ((z = y->parent) != ((void*)0))
    {
      if (y->mark == 0)
 {
   y->mark = 1;
   return;
 }
      else
 {
   fibheap_cut (heap, y, z);
   y = z;
 }
    }
}
