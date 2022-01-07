
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int name; int hash; } ;
struct dentry {int dummy; } ;


 int full_name_hash (int ,int ) ;
 int vfat_striptail_len (struct qstr*) ;

__attribute__((used)) static int vfat_hash(struct dentry *dentry, struct qstr *qstr)
{
 qstr->hash = full_name_hash(qstr->name, vfat_striptail_len(qstr));
 return 0;
}
