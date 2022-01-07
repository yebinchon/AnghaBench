
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {scalar_t__ min_count; } ;


 scalar_t__ KMEMLEAK_BLACK ;

__attribute__((used)) static bool color_black(const struct kmemleak_object *object)
{
 return object->min_count == KMEMLEAK_BLACK;
}
