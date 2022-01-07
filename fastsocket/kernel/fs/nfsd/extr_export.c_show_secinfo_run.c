
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct exp_flavor_info {int flags; int pseudoflavor; } ;


 scalar_t__ secinfo_flags_equal (int,int) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int show_secinfo_run(struct seq_file *m, struct exp_flavor_info **fp, struct exp_flavor_info *end)
{
 int flags;

 flags = (*fp)->flags;
 seq_printf(m, ",sec=%d", (*fp)->pseudoflavor);
 (*fp)++;
 while (*fp != end && secinfo_flags_equal(flags, (*fp)->flags)) {
  seq_printf(m, ":%d", (*fp)->pseudoflavor);
  (*fp)++;
 }
 return flags;
}
