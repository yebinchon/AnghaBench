
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_pid_sta_info {int events_entry; } ;
struct dentry {int dummy; } ;


 int S_IRUGO ;
 int debugfs_create_file (char*,int ,struct dentry*,struct rc_pid_sta_info*,int *) ;
 int rc_pid_fop_events ;

void rate_control_pid_add_sta_debugfs(void *priv, void *priv_sta,
          struct dentry *dir)
{
 struct rc_pid_sta_info *spinfo = priv_sta;

 spinfo->events_entry = debugfs_create_file("rc_pid_events", S_IRUGO,
         dir, spinfo,
         &rc_pid_fop_events);
}
