
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ use_shadow; } ;
struct TYPE_3__ {scalar_t__ size_err; } ;


 int COLS ;
 int LINES ;
 int SCOLS ;
 int SLINES ;
 TYPE_2__ dialog_state ;
 TYPE_1__ dialog_vars ;
 int dlg_exiterr (char*,int,int,int,int) ;

void
dlg_ctl_size(int height, int width)
{
    if (dialog_vars.size_err) {
 if ((width > COLS) || (height > LINES)) {
     dlg_exiterr("Window too big. (height, width) = (%d, %d). Max allowed (%d, %d).",
   height, width, LINES, COLS);
 }
    }
}
