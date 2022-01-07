
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int secno ;


 int GFP_NOFS ;
 scalar_t__ hpfs_ea_read (struct super_block*,int ,int,int ,int,char*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int printk (char*) ;

__attribute__((used)) static char *get_indirect_ea(struct super_block *s, int ano, secno a, int size)
{
 char *ret;
 if (!(ret = kmalloc(size + 1, GFP_NOFS))) {
  printk("HPFS: out of memory for EA\n");
  return ((void*)0);
 }
 if (hpfs_ea_read(s, a, ano, 0, size, ret)) {
  kfree(ret);
  return ((void*)0);
 }
 ret[size] = 0;
 return ret;
}
