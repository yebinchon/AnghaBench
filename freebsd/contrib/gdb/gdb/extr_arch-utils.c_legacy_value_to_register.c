
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int DEPRECATED_REGISTER_CONVERT_TO_RAW (struct type*,int,char*,char*) ;
 int MAX_REGISTER_SIZE ;
 int TYPE_LENGTH (struct type*) ;
 char* alloca (int ) ;
 int memcpy (char*,char*,int ) ;
 int put_frame_register (struct frame_info*,int,char*) ;

void
legacy_value_to_register (struct frame_info *frame, int regnum,
     struct type *type, const void *tmp)
{
  char to[MAX_REGISTER_SIZE];
  char *from = alloca (TYPE_LENGTH (type));
  memcpy (from, from, TYPE_LENGTH (type));
  DEPRECATED_REGISTER_CONVERT_TO_RAW (type, regnum, from, to);
  put_frame_register (frame, regnum, to);
}
