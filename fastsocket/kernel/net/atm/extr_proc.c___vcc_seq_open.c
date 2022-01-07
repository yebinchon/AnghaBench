
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_state {int family; } ;
struct seq_operations {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 struct vcc_state* __seq_open_private (struct file*,struct seq_operations const*,int) ;

__attribute__((used)) static int __vcc_seq_open(struct inode *inode, struct file *file,
 int family, const struct seq_operations *ops)
{
 struct vcc_state *state;

 state = __seq_open_private(file, ops, sizeof(*state));
 if (state == ((void*)0))
  return -ENOMEM;

 state->family = family;
 return 0;
}
