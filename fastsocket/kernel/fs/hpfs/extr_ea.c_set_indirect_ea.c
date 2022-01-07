
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int secno ;


 int hpfs_ea_write (struct super_block*,int ,int,int ,int,char*) ;

__attribute__((used)) static void set_indirect_ea(struct super_block *s, int ano, secno a, char *data,
       int size)
{
 hpfs_ea_write(s, a, ano, 0, size, data);
}
