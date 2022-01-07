
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int dummy; } ;


 int KMEMLEAK_BLACK ;
 int KMEMLEAK_GREY ;
 struct kmemleak_object* find_and_get_object (unsigned long,int ) ;
 int kmemleak_warn (char*,unsigned long,char*) ;
 int paint_it (struct kmemleak_object*,int) ;
 int put_object (struct kmemleak_object*) ;

__attribute__((used)) static void paint_ptr(unsigned long ptr, int color)
{
 struct kmemleak_object *object;

 object = find_and_get_object(ptr, 0);
 if (!object) {
  kmemleak_warn("Trying to color unknown object "
         "at 0x%08lx as %s\n", ptr,
         (color == KMEMLEAK_GREY) ? "Grey" :
         (color == KMEMLEAK_BLACK) ? "Black" : "Unknown");
  return;
 }
 paint_it(object, color);
 put_object(object);
}
