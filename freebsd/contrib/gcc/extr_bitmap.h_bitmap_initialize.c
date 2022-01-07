
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bitmap_obstack ;
typedef TYPE_1__* bitmap ;
struct TYPE_3__ {int * obstack; int * current; int first; } ;



__attribute__((used)) static inline void
bitmap_initialize (bitmap head, bitmap_obstack *obstack)
{
  head->first = head->current = ((void*)0);
  head->obstack = obstack;
}
