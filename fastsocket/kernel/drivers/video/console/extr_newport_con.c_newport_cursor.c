
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_pos; int vc_visible_origin; int vc_cols; } ;





 unsigned short VC2_CTRL_ECDISP ;
 int VC2_IREG_CONTROL ;
 int VC2_IREG_CURSX ;
 int VC2_IREG_CURSY ;
 unsigned short newport_vc2_get (int ,int ) ;
 int newport_vc2_set (int ,int ,int) ;
 int npregs ;
 int xcurs_correction ;

__attribute__((used)) static void newport_cursor(struct vc_data *vc, int mode)
{
 unsigned short treg;
 int xcurs, ycurs;

 switch (mode) {
 case 129:
  treg = newport_vc2_get(npregs, VC2_IREG_CONTROL);
  newport_vc2_set(npregs, VC2_IREG_CONTROL,
    (treg & ~(VC2_CTRL_ECDISP)));
  break;

 case 128:
 case 130:
  treg = newport_vc2_get(npregs, VC2_IREG_CONTROL);
  newport_vc2_set(npregs, VC2_IREG_CONTROL,
    (treg | VC2_CTRL_ECDISP));
  xcurs = (vc->vc_pos - vc->vc_visible_origin) / 2;
  ycurs = ((xcurs / vc->vc_cols) << 4) + 31;
  xcurs = ((xcurs % vc->vc_cols) << 3) + xcurs_correction;
  newport_vc2_set(npregs, VC2_IREG_CURSX, xcurs);
  newport_vc2_set(npregs, VC2_IREG_CURSY, ycurs);
 }
}
