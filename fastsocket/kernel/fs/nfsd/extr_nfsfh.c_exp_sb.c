
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dentry; } ;
struct svc_export {TYPE_3__ ex_path; } ;
struct super_block {int dummy; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct super_block* i_sb; } ;



__attribute__((used)) static struct super_block *exp_sb(struct svc_export *exp)
{
 return exp->ex_path.dentry->d_inode->i_sb;
}
