
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct pts_mount_opts {int dummy; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; } ;


 struct pts_fs_info* DEVPTS_SB (struct super_block*) ;
 int PARSE_REMOUNT ;
 int parse_mount_options (char*,int ,struct pts_mount_opts*) ;
 int update_ptmx_mode (struct pts_fs_info*) ;

__attribute__((used)) static int devpts_remount(struct super_block *sb, int *flags, char *data)
{
 int err;
 struct pts_fs_info *fsi = DEVPTS_SB(sb);
 struct pts_mount_opts *opts = &fsi->mount_opts;

 err = parse_mount_options(data, PARSE_REMOUNT, opts);







 update_ptmx_mode(fsi);

 return err;
}
