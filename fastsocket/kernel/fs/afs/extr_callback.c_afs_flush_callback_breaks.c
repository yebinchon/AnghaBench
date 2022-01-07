
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_server {int cb_break_work; } ;


 int afs_callback_update_worker ;
 int cancel_delayed_work (int *) ;
 int queue_delayed_work (int ,int *,int ) ;

void afs_flush_callback_breaks(struct afs_server *server)
{
 cancel_delayed_work(&server->cb_break_work);
 queue_delayed_work(afs_callback_update_worker,
      &server->cb_break_work, 0);
}
