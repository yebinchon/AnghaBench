
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 int frame_register_unwind (struct frame_info*,int,int*,int*,int *,int*,void*) ;

void
frame_unwind_register (struct frame_info *frame, int regnum, void *buf)
{
  int optimized;
  CORE_ADDR addr;
  int realnum;
  enum lval_type lval;
  frame_register_unwind (frame, regnum, &optimized, &lval, &addr,
    &realnum, buf);
}
