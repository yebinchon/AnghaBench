
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 int isofs_hash_common (struct dentry*,struct qstr*,int ) ;

__attribute__((used)) static int
isofs_hash(struct dentry *dentry, struct qstr *qstr)
{
 return isofs_hash_common(dentry, qstr, 0);
}
