
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_wss_info {int dummy; } ;
struct wlp_wss {int bcast; int secure_status; int accept_enroll; int name; int wssid; } ;
struct wlp_attr_wss_info {int hdr; void* wss_info; } ;


 int WLP_ATTR_WSS_INFO ;
 int strlen (int ) ;
 scalar_t__ wlp_set_accept_enrl (void*,int ) ;
 int wlp_set_attr_hdr (int *,int ,size_t) ;
 scalar_t__ wlp_set_wss_bcast (void*,int *) ;
 scalar_t__ wlp_set_wss_name (void*,int ,int) ;
 scalar_t__ wlp_set_wss_sec_status (void*,int ) ;
 size_t wlp_set_wssid (void*,int *) ;

__attribute__((used)) static size_t wlp_set_wss_info(struct wlp_attr_wss_info *attr,
          struct wlp_wss *wss)
{
 size_t datalen;
 void *ptr = attr->wss_info;
 size_t used = sizeof(*attr);

 datalen = sizeof(struct wlp_wss_info) + strlen(wss->name);
 wlp_set_attr_hdr(&attr->hdr, WLP_ATTR_WSS_INFO, datalen);
 used = wlp_set_wssid(ptr, &wss->wssid);
 used += wlp_set_wss_name(ptr + used, wss->name, strlen(wss->name));
 used += wlp_set_accept_enrl(ptr + used, wss->accept_enroll);
 used += wlp_set_wss_sec_status(ptr + used, wss->secure_status);
 used += wlp_set_wss_bcast(ptr + used, &wss->bcast);
 return sizeof(*attr) + used;
}
