
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 int frame_register (struct frame_info*,int,int*,int*,int *,int*,void*) ;
 scalar_t__ register_cached (int) ;

int
frame_register_read (struct frame_info *frame, int regnum, void *myaddr)
{
  int optimized;
  enum lval_type lval;
  CORE_ADDR addr;
  int realnum;
  frame_register (frame, regnum, &optimized, &lval, &addr, &realnum, myaddr);
  if (register_cached (regnum) < 0)
    return 0;

  return !optimized;
}
