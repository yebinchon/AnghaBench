
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_export {int ex_nflavors; int ex_flags; struct exp_flavor_info* ex_flavors; } ;
struct seq_file {int dummy; } ;
struct exp_flavor_info {int dummy; } ;


 int secinfo_flags_equal (int,int ) ;
 int show_secinfo_flags (struct seq_file*,int) ;
 int show_secinfo_run (struct seq_file*,struct exp_flavor_info**,struct exp_flavor_info*) ;

__attribute__((used)) static void show_secinfo(struct seq_file *m, struct svc_export *exp)
{
 struct exp_flavor_info *f;
 struct exp_flavor_info *end = exp->ex_flavors + exp->ex_nflavors;
 int flags;

 if (exp->ex_nflavors == 0)
  return;
 f = exp->ex_flavors;
 flags = show_secinfo_run(m, &f, end);
 if (!secinfo_flags_equal(flags, exp->ex_flags))
  show_secinfo_flags(m, flags);
 while (f != end) {
  flags = show_secinfo_run(m, &f, end);
  show_secinfo_flags(m, flags);
 }
}
