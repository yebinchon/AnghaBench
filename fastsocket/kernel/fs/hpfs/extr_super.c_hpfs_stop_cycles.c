
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int hpfs_error (struct super_block*,char*,int,char*) ;

int hpfs_stop_cycles(struct super_block *s, int key, int *c1, int *c2,
  char *msg)
{
 if (*c2 && *c1 == key) {
  hpfs_error(s, "cycle detected on key %08x in %s", key, msg);
  return 1;
 }
 (*c2)++;
 if (!((*c2 - 1) & *c2)) *c1 = key;
 return 0;
}
