
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int parse_options (char*) ;

__attribute__((used)) static int pstore_remount(struct super_block *sb, int *flags, char *data)
{
 parse_options(data);

 return 0;
}
