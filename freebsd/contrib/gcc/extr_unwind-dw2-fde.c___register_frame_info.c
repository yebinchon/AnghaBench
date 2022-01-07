
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;


 int __register_frame_info_bases (void const*,struct object*,int ,int ) ;

void
__register_frame_info (const void *begin, struct object *ob)
{
  __register_frame_info_bases (begin, ob, 0, 0);
}
