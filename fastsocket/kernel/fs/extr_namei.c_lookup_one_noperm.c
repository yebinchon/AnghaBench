
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* ERR_PTR (int) ;
 struct dentry* __lookup_hash (struct qstr*,struct dentry*,int *) ;
 int __lookup_one_len (char const*,struct qstr*,struct dentry*,int ) ;
 int strlen (char const*) ;

struct dentry *lookup_one_noperm(const char *name, struct dentry *base)
{
 int err;
 struct qstr this;

 err = __lookup_one_len(name, &this, base, strlen(name));
 if (err)
  return ERR_PTR(err);
 return __lookup_hash(&this, base, ((void*)0));
}
