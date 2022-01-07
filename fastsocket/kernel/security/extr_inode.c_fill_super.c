
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_descr {char* member_0; } ;
struct super_block {int dummy; } ;


 int SECURITYFS_MAGIC ;
 int simple_fill_super (struct super_block*,int ,struct tree_descr*) ;

__attribute__((used)) static int fill_super(struct super_block *sb, void *data, int silent)
{
 static struct tree_descr files[] = {{""}};

 return simple_fill_super(sb, SECURITYFS_MAGIC, files);
}
