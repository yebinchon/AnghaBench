
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int TYPE_LENGTH (struct type*) ;
 int current_gdbarch ;
 int gdb_assert (int) ;
 scalar_t__ i386_fp_regnum_p (int) ;
 int i386_next_regnum (int) ;
 int i387_value_to_register (struct frame_info*,int,struct type*,void const*) ;
 int put_frame_register (struct frame_info*,int,char const*) ;
 int register_size (int ,int) ;

__attribute__((used)) static void
i386_value_to_register (struct frame_info *frame, int regnum,
   struct type *type, const void *from)
{
  int len = TYPE_LENGTH (type);
  const char *buf = from;

  if (i386_fp_regnum_p (regnum))
    {
      i387_value_to_register (frame, regnum, type, from);
      return;
    }



  gdb_assert (len > 4 && len % 4 == 0);

  while (len > 0)
    {
      gdb_assert (regnum != -1);
      gdb_assert (register_size (current_gdbarch, regnum) == 4);

      put_frame_register (frame, regnum, buf);
      regnum = i386_next_regnum (regnum);
      len -= 4;
      buf += 4;
    }
}
