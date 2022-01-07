
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct cgroup_seqfile_state* private; } ;
struct cgroup_seqfile_state {int cgroup; struct cftype* cft; } ;
struct cgroup_map_cb {struct seq_file* state; int fill; } ;
struct cftype {int (* read_map ) (int ,struct cftype*,struct cgroup_map_cb*) ;int (* read_seq_string ) (int ,struct cftype*,struct seq_file*) ;} ;


 int cgroup_map_add ;
 int stub1 (int ,struct cftype*,struct cgroup_map_cb*) ;
 int stub2 (int ,struct cftype*,struct seq_file*) ;

__attribute__((used)) static int cgroup_seqfile_show(struct seq_file *m, void *arg)
{
 struct cgroup_seqfile_state *state = m->private;
 struct cftype *cft = state->cft;
 if (cft->read_map) {
  struct cgroup_map_cb cb = {
   .fill = cgroup_map_add,
   .state = m,
  };
  return cft->read_map(state->cgroup, cft, &cb);
 }
 return cft->read_seq_string(state->cgroup, cft, m);
}
