
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_notify {int dummy; } ;


 int SLIST_REMOVE (int *,struct target_notify*,int ,int ) ;
 int free (struct target_notify*) ;
 int target_notify ;
 int target_notifylist ;
 int tn ;

int
target_delete_notify(struct target_notify *notify)
{
 SLIST_REMOVE(&target_notifylist, notify, target_notify, tn);
 free(notify);

 return (0);
}
