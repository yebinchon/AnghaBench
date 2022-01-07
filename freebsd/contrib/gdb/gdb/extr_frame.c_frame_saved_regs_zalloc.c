
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int * saved_regs; } ;
typedef int CORE_ADDR ;


 int SIZEOF_FRAME_SAVED_REGS ;
 scalar_t__ frame_obstack_zalloc (int ) ;

CORE_ADDR *
frame_saved_regs_zalloc (struct frame_info *fi)
{
  fi->saved_regs = (CORE_ADDR *)
    frame_obstack_zalloc (SIZEOF_FRAME_SAVED_REGS);
  return fi->saved_regs;
}
