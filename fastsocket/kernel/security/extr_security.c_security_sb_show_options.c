
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int (* sb_show_options ) (struct seq_file*,struct super_block*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct seq_file*,struct super_block*) ;

int security_sb_show_options(struct seq_file *m, struct super_block *sb)
{
 return security_ops->sb_show_options(m, sb);
}
