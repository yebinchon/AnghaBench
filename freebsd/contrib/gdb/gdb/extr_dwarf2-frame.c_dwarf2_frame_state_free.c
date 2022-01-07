
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct dwarf2_frame_state* reg; int prev; } ;
struct TYPE_3__ {struct dwarf2_frame_state* reg; int prev; } ;
struct dwarf2_frame_state {TYPE_2__ regs; TYPE_1__ initial; } ;


 int dwarf2_frame_state_free_regs (int ) ;
 int xfree (struct dwarf2_frame_state*) ;

__attribute__((used)) static void
dwarf2_frame_state_free (void *p)
{
  struct dwarf2_frame_state *fs = p;

  dwarf2_frame_state_free_regs (fs->initial.prev);
  dwarf2_frame_state_free_regs (fs->regs.prev);
  xfree (fs->initial.reg);
  xfree (fs->regs.reg);
  xfree (fs);
}
