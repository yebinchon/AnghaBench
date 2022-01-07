
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;


 int __register_frame_info_table (void*,struct object*) ;
 struct object* malloc (int) ;

void
__register_frame_table (void *begin)
{
  struct object *ob = malloc (sizeof (struct object));
  __register_frame_info_table (begin, ob);
}
