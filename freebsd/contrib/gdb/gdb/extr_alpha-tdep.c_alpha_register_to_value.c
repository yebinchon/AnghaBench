
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int MAX_REGISTER_SIZE ;
 int TYPE_LENGTH (struct type*) ;
 int alpha_sts (void*,char*) ;
 int error (char*) ;
 int frame_register_read (struct frame_info*,int,char*) ;
 int memcpy (void*,char*,int) ;

__attribute__((used)) static void
alpha_register_to_value (struct frame_info *frame, int regnum,
    struct type *valtype, void *out)
{
  char in[MAX_REGISTER_SIZE];
  frame_register_read (frame, regnum, in);
  switch (TYPE_LENGTH (valtype))
    {
    case 4:
      alpha_sts (out, in);
      break;
    case 8:
      memcpy (out, in, 8);
      break;
    default:
      error ("Cannot retrieve value from floating point register");
    }
}
