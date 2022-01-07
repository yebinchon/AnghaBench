
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sigev_notify; } ;
struct mqueue_inode_info {int * notify_owner; int notify_cookie; int notify_sock; TYPE_1__ notify; } ;


 int NOTIFY_REMOVED ;
 scalar_t__ SIGEV_THREAD ;
 int netlink_sendskb (int ,int ) ;
 int put_pid (int *) ;
 int set_cookie (int ,int ) ;

__attribute__((used)) static void remove_notification(struct mqueue_inode_info *info)
{
 if (info->notify_owner != ((void*)0) &&
     info->notify.sigev_notify == SIGEV_THREAD) {
  set_cookie(info->notify_cookie, NOTIFY_REMOVED);
  netlink_sendskb(info->notify_sock, info->notify_cookie);
 }
 put_pid(info->notify_owner);
 info->notify_owner = ((void*)0);
}
