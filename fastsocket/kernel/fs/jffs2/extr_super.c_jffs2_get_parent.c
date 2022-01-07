
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct jffs2_inode_info {TYPE_1__* inocache; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {int i_sb; int i_mode; } ;
struct TYPE_3__ {int ino; int pino_nlink; } ;


 int BUG_ON (int) ;
 int JFFS2_DEBUG (char*,int ,int ) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (TYPE_2__*) ;
 int S_ISDIR (int ) ;
 struct dentry* d_obtain_alias (int ) ;
 int jffs2_iget (int ,int ) ;

__attribute__((used)) static struct dentry *jffs2_get_parent(struct dentry *child)
{
 struct jffs2_inode_info *f;
 uint32_t pino;

 BUG_ON(!S_ISDIR(child->d_inode->i_mode));

 f = JFFS2_INODE_INFO(child->d_inode);

 pino = f->inocache->pino_nlink;

 JFFS2_DEBUG("Parent of directory ino #%u is #%u\n",
      f->inocache->ino, pino);

 return d_obtain_alias(jffs2_iget(child->d_inode->i_sb, pino));
}
