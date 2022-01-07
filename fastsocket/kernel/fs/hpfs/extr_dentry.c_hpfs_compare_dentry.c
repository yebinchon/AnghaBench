
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned int len; scalar_t__ name; } ;
struct dentry {int d_sb; } ;


 int hpfs_adjust_length (char*,unsigned int*) ;
 scalar_t__ hpfs_chk_name (char*,unsigned int*) ;
 scalar_t__ hpfs_compare_names (int ,char*,unsigned int,char*,unsigned int,int ) ;

__attribute__((used)) static int hpfs_compare_dentry(struct dentry *dentry, struct qstr *a, struct qstr *b)
{
 unsigned al=a->len;
 unsigned bl=b->len;
 hpfs_adjust_length((char *)a->name, &al);





 if (hpfs_chk_name((char *)b->name, &bl)) return 1;
 if (hpfs_compare_names(dentry->d_sb, (char *)a->name, al, (char *)b->name, bl, 0)) return 1;
 return 0;
}
