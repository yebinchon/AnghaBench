
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sbitmap ;
struct TYPE_4__ {int size; int elms; } ;
typedef int SBITMAP_ELT_TYPE ;


 int memcmp (int ,int ,int) ;

int
sbitmap_equal (sbitmap a, sbitmap b)
{
  return !memcmp (a->elms, b->elms, sizeof (SBITMAP_ELT_TYPE) * a->size);
}
