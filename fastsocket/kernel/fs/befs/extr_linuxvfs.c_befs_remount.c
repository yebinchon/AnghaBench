
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EINVAL ;
 int MS_RDONLY ;

__attribute__((used)) static int
befs_remount(struct super_block *sb, int *flags, char *data)
{
 if (!(*flags & MS_RDONLY))
  return -EINVAL;
 return 0;
}
