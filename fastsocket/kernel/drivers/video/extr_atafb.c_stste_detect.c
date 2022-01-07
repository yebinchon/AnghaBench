
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atafb_par {int dummy; } ;
struct TYPE_4__ {int par_dt_reg; } ;
struct TYPE_3__ {int ctrl; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 int DMASND_CTRL_OFF ;
 int EXTD_SHIFTER ;
 int PCM_8BIT ;
 int * atafb_predefined ;
 int mono_moni ;
 TYPE_2__ st_mfp ;
 int stste_encode_var (int *,struct atafb_par*) ;
 int stste_get_par (struct atafb_par*) ;
 TYPE_1__ tt_dmasnd ;
 int udelay (int) ;
 scalar_t__ use_hwscroll ;

__attribute__((used)) static int stste_detect(void)
{
 struct atafb_par par;





 if (ATARIHW_PRESENT(PCM_8BIT)) {
  tt_dmasnd.ctrl = DMASND_CTRL_OFF;
  udelay(20);
 }
 mono_moni = (st_mfp.par_dt_reg & 0x80) == 0;

 stste_get_par(&par);
 stste_encode_var(&atafb_predefined[0], &par);

 if (!ATARIHW_PRESENT(EXTD_SHIFTER))
  use_hwscroll = 0;
 return 1;
}
