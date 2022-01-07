
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_pid_sta_info {int events_entry; } ;


 int debugfs_remove (int ) ;

void rate_control_pid_remove_sta_debugfs(void *priv, void *priv_sta)
{
 struct rc_pid_sta_info *spinfo = priv_sta;

 debugfs_remove(spinfo->events_entry);
}
