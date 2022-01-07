
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int (* sb_clone_mnt_opts ) (struct super_block const*,struct super_block*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct super_block const*,struct super_block*) ;

int security_sb_clone_mnt_opts(const struct super_block *oldsb,
    struct super_block *newsb)
{
 return security_ops->sb_clone_mnt_opts(oldsb, newsb);
}
