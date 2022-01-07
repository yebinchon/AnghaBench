
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_live_connection {int * oc_conn; int oc_list; } ;


 int kfree (struct ocfs2_live_connection*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_control_lock ;

__attribute__((used)) static void ocfs2_live_connection_drop(struct ocfs2_live_connection *c)
{
 mutex_lock(&ocfs2_control_lock);
 list_del_init(&c->oc_list);
 c->oc_conn = ((void*)0);
 mutex_unlock(&ocfs2_control_lock);

 kfree(c);
}
