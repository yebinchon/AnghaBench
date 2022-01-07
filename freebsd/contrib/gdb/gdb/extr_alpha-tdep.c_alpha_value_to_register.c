
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int MAX_REGISTER_SIZE ;
 int TYPE_LENGTH (struct type*) ;
 int alpha_lds (char*,void const*) ;
 int error (char*) ;
 int memcpy (char*,void const*,int) ;
 int put_frame_register (struct frame_info*,int,char*) ;

__attribute__((used)) static void
alpha_value_to_register (struct frame_info *frame, int regnum,
    struct type *valtype, const void *in)
{
  char out[MAX_REGISTER_SIZE];
  switch (TYPE_LENGTH (valtype))
    {
    case 4:
      alpha_lds (out, in);
      break;
    case 8:
      memcpy (out, in, 8);
      break;
    default:
      error ("Cannot store value in floating point register");
    }
  put_frame_register (frame, regnum, out);
}
