
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;
typedef scalar_t__ loff_t ;
typedef scalar_t__ ext4_group_t ;


 scalar_t__ ext4_get_groups_count (struct super_block*) ;

__attribute__((used)) static void *ext4_mb_seq_groups_next(struct seq_file *seq, void *v, loff_t *pos)
{
 struct super_block *sb = seq->private;
 ext4_group_t group;

 ++*pos;
 if (*pos < 0 || *pos >= ext4_get_groups_count(sb))
  return ((void*)0);
 group = *pos + 1;
 return (void *) ((unsigned long) group);
}
