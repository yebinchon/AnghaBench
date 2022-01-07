
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct security_mnt_opts {int dummy; } ;
struct TYPE_2__ {int (* sb_set_mnt_opts ) (struct super_block*,struct security_mnt_opts*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct super_block*,struct security_mnt_opts*) ;

int security_sb_set_mnt_opts(struct super_block *sb,
    struct security_mnt_opts *opts)
{
 return security_ops->sb_set_mnt_opts(sb, opts);
}
