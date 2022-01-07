
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ word; } ;
struct TYPE_5__ {TYPE_3__ _xstart; int xstarti; } ;
struct TYPE_4__ {int config; } ;
struct newport_regs {TYPE_2__ set; TYPE_1__ cset; } ;


 int FONT_DATA ;
 int MAX_NR_CONSOLES ;
 int NPORT_CFG_GD0 ;
 int TESTVAL ;
 scalar_t__ XSTI_TO_FXSTART (int ) ;
 int * font_data ;
 scalar_t__ ioremap (int ,int) ;
 int newport_get_revisions () ;
 int newport_get_screensize () ;
 int newport_has_init ;
 int newport_reset () ;
 scalar_t__ newport_wait (struct newport_regs*) ;
 struct newport_regs* npregs ;
 int sgi_gfxaddr ;

__attribute__((used)) static const char *newport_startup(void)
{
 int i;

 if (!sgi_gfxaddr)
  return ((void*)0);

 if (!npregs)
  npregs = (struct newport_regs *)
   ioremap(sgi_gfxaddr, sizeof(struct newport_regs));
 npregs->cset.config = NPORT_CFG_GD0;

 if (newport_wait(npregs))
  goto out_unmap;

 npregs->set.xstarti = TESTVAL;
 if (npregs->set._xstart.word != XSTI_TO_FXSTART(TESTVAL))
  goto out_unmap;

 for (i = 0; i < MAX_NR_CONSOLES; i++)
  font_data[i] = FONT_DATA;

 newport_reset();
 newport_get_revisions();
 newport_get_screensize();
 newport_has_init = 1;

 return "SGI Newport";

out_unmap:
 return ((void*)0);
}
