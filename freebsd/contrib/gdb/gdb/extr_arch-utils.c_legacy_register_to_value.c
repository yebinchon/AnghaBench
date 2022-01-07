
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int DEPRECATED_REGISTER_CONVERT_TO_VIRTUAL (int,struct type*,char*,void*) ;
 int MAX_REGISTER_SIZE ;
 int get_frame_register (struct frame_info*,int,char*) ;

void
legacy_register_to_value (struct frame_info *frame, int regnum,
     struct type *type, void *to)
{
  char from[MAX_REGISTER_SIZE];
  get_frame_register (frame, regnum, from);
  DEPRECATED_REGISTER_CONVERT_TO_VIRTUAL (regnum, type, from, to);
}
