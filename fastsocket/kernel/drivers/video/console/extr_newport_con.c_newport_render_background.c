
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xyendi; } ;
struct TYPE_6__ {int wrmask; int drawmode0; int colori; int xystarti; } ;
struct TYPE_7__ {TYPE_1__ go; TYPE_2__ set; } ;


 int NPORT_DMODE0_BLOCK ;
 int NPORT_DMODE0_DOSETUP ;
 int NPORT_DMODE0_DRAW ;
 int NPORT_DMODE0_STOPX ;
 int NPORT_DMODE0_STOPY ;
 int newport_wait (TYPE_3__*) ;
 TYPE_3__* npregs ;
 int topscan ;

__attribute__((used)) static inline void newport_render_background(int xstart, int ystart,
          int xend, int yend, int ci)
{
 newport_wait(npregs);
 npregs->set.wrmask = 0xffffffff;
 npregs->set.drawmode0 = (NPORT_DMODE0_DRAW | NPORT_DMODE0_BLOCK |
     NPORT_DMODE0_DOSETUP | NPORT_DMODE0_STOPX
     | NPORT_DMODE0_STOPY);
 npregs->set.colori = ci;
 npregs->set.xystarti =
     (xstart << 16) | ((ystart + topscan) & 0x3ff);
 npregs->go.xyendi =
     ((xend + 7) << 16) | ((yend + topscan + 15) & 0x3ff);
}
