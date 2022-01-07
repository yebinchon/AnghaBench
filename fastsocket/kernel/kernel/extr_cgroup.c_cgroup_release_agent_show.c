
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct cgroup {TYPE_1__* root; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int release_agent_path; } ;


 int ENODEV ;
 int cgroup_lock_live_group (struct cgroup*) ;
 int cgroup_unlock () ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,int ) ;

__attribute__((used)) static int cgroup_release_agent_show(struct cgroup *cgrp, struct cftype *cft,
         struct seq_file *seq)
{
 if (!cgroup_lock_live_group(cgrp))
  return -ENODEV;
 seq_puts(seq, cgrp->root->release_agent_path);
 seq_putc(seq, '\n');
 cgroup_unlock();
 return 0;
}
