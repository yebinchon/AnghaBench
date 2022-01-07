
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int flags; scalar_t__ jiffies; } ;


 int OBJECT_ALLOCATED ;
 scalar_t__ color_white (struct kmemleak_object*) ;
 int jiffies_last_scan ;
 scalar_t__ jiffies_min_age ;
 scalar_t__ time_before_eq (scalar_t__,int ) ;

__attribute__((used)) static bool unreferenced_object(struct kmemleak_object *object)
{
 return (object->flags & OBJECT_ALLOCATED) && color_white(object) &&
  time_before_eq(object->jiffies + jiffies_min_age,
          jiffies_last_scan);
}
