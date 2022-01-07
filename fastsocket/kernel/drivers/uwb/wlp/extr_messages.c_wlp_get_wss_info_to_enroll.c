
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_wss {int dummy; } ;
struct wlp_attr_wss_info {int dummy; } ;
struct wlp {int dummy; } ;
typedef int ssize_t ;


 int wlp_get_all_wss_info (struct wlp*,struct wlp_attr_wss_info*,int *,struct wlp_wss*,int ) ;

__attribute__((used)) static ssize_t wlp_get_wss_info_to_enroll(struct wlp *wlp,
       struct wlp_attr_wss_info *attr,
       struct wlp_wss *wss, ssize_t buflen)
{
 return wlp_get_all_wss_info(wlp, attr, ((void*)0), wss, buflen);
}
