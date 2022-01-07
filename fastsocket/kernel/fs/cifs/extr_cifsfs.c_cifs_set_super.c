
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_fs_info; } ;
struct cifs_mnt_data {int cifs_sb; } ;


 int set_anon_super (struct super_block*,int *) ;

__attribute__((used)) static int cifs_set_super(struct super_block *sb, void *data)
{
 struct cifs_mnt_data *mnt_data = data;
 sb->s_fs_info = mnt_data->cifs_sb;
 return set_anon_super(sb, ((void*)0));
}
