
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int MS_NODIRATIME ;
 int parse_options (struct super_block*,char*) ;

__attribute__((used)) static int adfs_remount(struct super_block *sb, int *flags, char *data)
{
 *flags |= MS_NODIRATIME;
 return parse_options(sb, data);
}
