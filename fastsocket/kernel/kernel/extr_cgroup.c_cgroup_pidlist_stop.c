
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct cgroup_pidlist* private; } ;
struct cgroup_pidlist {int mutex; } ;


 int up_read (int *) ;

__attribute__((used)) static void cgroup_pidlist_stop(struct seq_file *s, void *v)
{
 struct cgroup_pidlist *l = s->private;
 up_read(&l->mutex);
}
