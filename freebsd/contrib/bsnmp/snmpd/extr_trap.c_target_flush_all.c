
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_param {scalar_t__ status; int socket; } ;
struct target_notify {scalar_t__ status; int socket; } ;
struct target_address {scalar_t__ status; int socket; } ;


 scalar_t__ RowStatus_active ;
 struct target_param* SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int close (int ) ;
 int free (struct target_param*) ;
 int ta ;
 int target_addresslist ;
 int target_notifylist ;
 int target_paramlist ;
 int tn ;
 int tp ;

void
target_flush_all(void)
{
 struct target_address *addrs;
 struct target_param *param;
 struct target_notify *notify;

 while ((addrs = SLIST_FIRST(&target_addresslist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&target_addresslist, ta);
  if (addrs->status == RowStatus_active)
   close(addrs->socket);
  free(addrs);
 }
 SLIST_INIT(&target_addresslist);

 while ((param = SLIST_FIRST(&target_paramlist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&target_paramlist, tp);
  free(param);
 }
 SLIST_INIT(&target_paramlist);

 while ((notify = SLIST_FIRST(&target_notifylist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&target_notifylist, tn);
  free(notify);
 }
 SLIST_INIT(&target_notifylist);
}
