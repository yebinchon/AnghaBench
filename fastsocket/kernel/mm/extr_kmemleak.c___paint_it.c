
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int min_count; int flags; } ;


 int KMEMLEAK_BLACK ;
 int OBJECT_NO_SCAN ;

__attribute__((used)) static void __paint_it(struct kmemleak_object *object, int color)
{
 object->min_count = color;
 if (color == KMEMLEAK_BLACK)
  object->flags |= OBJECT_NO_SCAN;
}
