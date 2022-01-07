
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct gfs2_glock {int gl_spin; } ;


 int __dump_glock (struct seq_file*,struct gfs2_glock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dump_glock(struct seq_file *seq, struct gfs2_glock *gl)
{
 int ret;
 spin_lock(&gl->gl_spin);
 ret = __dump_glock(seq, gl);
 spin_unlock(&gl->gl_spin);
 return ret;
}
