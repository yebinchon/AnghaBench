
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union xenfb_out_event {int resize; } ;
struct xenfb_info {int resize; } ;
typedef int event ;


 int memset (union xenfb_out_event*,int ,int) ;
 int xenfb_send_event (struct xenfb_info*,union xenfb_out_event*) ;

__attribute__((used)) static void xenfb_do_resize(struct xenfb_info *info)
{
 union xenfb_out_event event;

 memset(&event, 0, sizeof(event));
 event.resize = info->resize;


 xenfb_send_event(info, &event);
}
