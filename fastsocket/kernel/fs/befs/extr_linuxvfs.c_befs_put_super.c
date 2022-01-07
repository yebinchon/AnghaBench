
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int * s_fs_info; } ;
struct TYPE_3__ {int * iocharset; } ;
struct TYPE_4__ {int nls; TYPE_1__ mount_opts; } ;


 TYPE_2__* BEFS_SB (struct super_block*) ;
 int kfree (int *) ;
 int unload_nls (int ) ;

__attribute__((used)) static void
befs_put_super(struct super_block *sb)
{
 kfree(BEFS_SB(sb)->mount_opts.iocharset);
 BEFS_SB(sb)->mount_opts.iocharset = ((void*)0);
 unload_nls(BEFS_SB(sb)->nls);
 kfree(sb->s_fs_info);
 sb->s_fs_info = ((void*)0);
}
