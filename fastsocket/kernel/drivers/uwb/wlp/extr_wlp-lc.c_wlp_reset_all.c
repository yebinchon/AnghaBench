
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp {int rc; } ;


 int uwb_rc_reset_all (int ) ;

void wlp_reset_all(struct wlp *wlp)
{
 uwb_rc_reset_all(wlp->rc);
}
