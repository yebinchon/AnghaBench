
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ev_log {int name; } ;


 int debugfs_create_file (int ,int,int ,struct ev_log*,int *) ;
 int ev_log_ops ;

__attribute__((used)) static int ev_log_init(struct ev_log *log)
{
 debugfs_create_file(log->name, 0444, 0, log, &ev_log_ops);
 return 0;
}
