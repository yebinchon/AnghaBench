
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int len; int name; int hash; } ;
struct dentry {TYPE_1__* d_op; } ;
struct TYPE_2__ {scalar_t__ (* d_hash ) (struct dentry*,struct qstr*) ;} ;


 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 int full_name_hash (int ,int ) ;
 scalar_t__ stub1 (struct dentry*,struct qstr*) ;

struct dentry *d_hash_and_lookup(struct dentry *dir, struct qstr *name)
{
 struct dentry *dentry = ((void*)0);






 name->hash = full_name_hash(name->name, name->len);
 if (dir->d_op && dir->d_op->d_hash) {
  if (dir->d_op->d_hash(dir, name) < 0)
   goto out;
 }
 dentry = d_lookup(dir, name);
out:
 return dentry;
}
