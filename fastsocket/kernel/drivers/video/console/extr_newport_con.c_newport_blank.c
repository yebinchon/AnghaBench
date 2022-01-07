
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 unsigned short VC2_CTRL_EDISP ;
 int VC2_IREG_CONTROL ;
 unsigned short newport_vc2_get (int ,int ) ;
 int newport_vc2_set (int ,int ,unsigned short) ;
 int npregs ;

__attribute__((used)) static int newport_blank(struct vc_data *c, int blank, int mode_switch)
{
 unsigned short treg;

 if (blank == 0) {

  treg = newport_vc2_get(npregs, VC2_IREG_CONTROL);
  newport_vc2_set(npregs, VC2_IREG_CONTROL,
    (treg | VC2_CTRL_EDISP));
 } else {

  treg = newport_vc2_get(npregs, VC2_IREG_CONTROL);
  newport_vc2_set(npregs, VC2_IREG_CONTROL,
    (treg & ~(VC2_CTRL_EDISP)));
 }
 return 1;
}
