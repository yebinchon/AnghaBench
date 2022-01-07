
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int debugfs_create_dir (char*,struct dentry*) ;
 int pr_warning (char*) ;
 int stat_dir ;
 struct dentry* tracing_init_dentry () ;

__attribute__((used)) static int tracing_stat_init(void)
{
 struct dentry *d_tracing;

 d_tracing = tracing_init_dentry();

 stat_dir = debugfs_create_dir("trace_stat", d_tracing);
 if (!stat_dir)
  pr_warning("Could not create debugfs "
      "'trace_stat' entry\n");
 return 0;
}
