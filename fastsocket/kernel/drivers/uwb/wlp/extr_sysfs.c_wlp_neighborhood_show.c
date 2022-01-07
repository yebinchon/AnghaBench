
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int wlp_discover (struct wlp*) ;
 int wlp_wss_neighborhood_print_remove (struct wlp*,char*,int ) ;

ssize_t wlp_neighborhood_show(struct wlp *wlp, char *buf)
{
 wlp_discover(wlp);
 return wlp_wss_neighborhood_print_remove(wlp, buf, PAGE_SIZE);
}
