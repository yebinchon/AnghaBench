
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; int s_blocksize_bits; int s_time_gran; int s_root; int * s_op; int s_magic; int s_flags; } ;
struct TYPE_2__ {int node; } ;
struct op_inode_info {TYPE_1__ u; int type; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MS_NOATIME ;
 int OPENPROM_ROOT_INO ;
 int OPENPROM_SUPER_MAGIC ;
 struct op_inode_info* OP_I (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int d_alloc_root (struct inode*) ;
 int iput (struct inode*) ;
 int of_find_node_by_path (char*) ;
 int op_inode_node ;
 struct inode* openprom_iget (struct super_block*,int ) ;
 int openprom_sops ;
 int printk (char*) ;

__attribute__((used)) static int openprom_fill_super(struct super_block *s, void *data, int silent)
{
 struct inode *root_inode;
 struct op_inode_info *oi;
 int ret;

 s->s_flags |= MS_NOATIME;
 s->s_blocksize = 1024;
 s->s_blocksize_bits = 10;
 s->s_magic = OPENPROM_SUPER_MAGIC;
 s->s_op = &openprom_sops;
 s->s_time_gran = 1;
 root_inode = openprom_iget(s, OPENPROM_ROOT_INO);
 if (IS_ERR(root_inode)) {
  ret = PTR_ERR(root_inode);
  goto out_no_root;
 }

 oi = OP_I(root_inode);
 oi->type = op_inode_node;
 oi->u.node = of_find_node_by_path("/");

 s->s_root = d_alloc_root(root_inode);
 if (!s->s_root)
  goto out_no_root_dentry;
 return 0;

out_no_root_dentry:
 iput(root_inode);
 ret = -ENOMEM;
out_no_root:
 printk("openprom_fill_super: get root inode failed\n");
 return ret;
}
