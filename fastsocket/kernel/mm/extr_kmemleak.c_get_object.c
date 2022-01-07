
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int use_count; } ;


 int atomic_inc_not_zero (int *) ;

__attribute__((used)) static int get_object(struct kmemleak_object *object)
{
 return atomic_inc_not_zero(&object->use_count);
}
