
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {char const* name; int len; int hash; } ;
struct dentry {int dummy; } ;


 struct dentry* d_alloc (struct dentry*,struct qstr*) ;
 int full_name_hash (char const*,int ) ;
 int strlen (char const*) ;

struct dentry *d_alloc_name(struct dentry *parent, const char *name)
{
 struct qstr q;

 q.name = name;
 q.len = strlen(name);
 q.hash = full_name_hash(q.name, q.len);
 return d_alloc(parent, &q);
}
