
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_live_connection {TYPE_1__* oc_conn; } ;
struct TYPE_2__ {int cc_recovery_data; int (* cc_recovery_handler ) (int,int ) ;} ;


 int BUG_ON (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ocfs2_live_connection* ocfs2_connection_find (char const*) ;
 int ocfs2_control_lock ;
 int stub1 (int,int ) ;

__attribute__((used)) static void ocfs2_control_send_down(const char *uuid,
        int nodenum)
{
 struct ocfs2_live_connection *c;

 mutex_lock(&ocfs2_control_lock);

 c = ocfs2_connection_find(uuid);
 if (c) {
  BUG_ON(c->oc_conn == ((void*)0));
  c->oc_conn->cc_recovery_handler(nodenum,
      c->oc_conn->cc_recovery_data);
 }

 mutex_unlock(&ocfs2_control_lock);
}
