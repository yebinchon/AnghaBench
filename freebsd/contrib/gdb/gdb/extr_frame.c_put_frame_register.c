
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 int MAX_REGISTER_SIZE ;
 int current_regcache ;
 int error (char*) ;
 int frame_register (struct frame_info*,int,int*,int*,int *,int*,int *) ;
 struct gdbarch* get_frame_arch (struct frame_info*) ;


 int memcpy (char*,void const*,int ) ;
 int regcache_cooked_write (int ,int,void const*) ;
 int register_size (struct gdbarch*,int) ;
 int write_memory (int ,char*,int ) ;

void
put_frame_register (struct frame_info *frame, int regnum, const void *buf)
{
  struct gdbarch *gdbarch = get_frame_arch (frame);
  int realnum;
  int optim;
  enum lval_type lval;
  CORE_ADDR addr;
  frame_register (frame, regnum, &optim, &lval, &addr, &realnum, ((void*)0));
  if (optim)
    error ("Attempt to assign to a value that was optimized out.");
  switch (lval)
    {
    case 129:
      {


 char tmp[MAX_REGISTER_SIZE];
 memcpy (tmp, buf, register_size (gdbarch, regnum));
 write_memory (addr, tmp, register_size (gdbarch, regnum));
 break;
      }
    case 128:
      regcache_cooked_write (current_regcache, realnum, buf);
      break;
    default:
      error ("Attempt to assign to an unmodifiable value.");
    }
}
