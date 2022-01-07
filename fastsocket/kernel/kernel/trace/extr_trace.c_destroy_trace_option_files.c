
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_option_dentry {scalar_t__ entry; scalar_t__ opt; } ;


 int debugfs_remove (scalar_t__) ;
 int kfree (struct trace_option_dentry*) ;

__attribute__((used)) static void
destroy_trace_option_files(struct trace_option_dentry *topts)
{
 int cnt;

 if (!topts)
  return;

 for (cnt = 0; topts[cnt].opt; cnt++) {
  if (topts[cnt].entry)
   debugfs_remove(topts[cnt].entry);
 }

 kfree(topts);
}
