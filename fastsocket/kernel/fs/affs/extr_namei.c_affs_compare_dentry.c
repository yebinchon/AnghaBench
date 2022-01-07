
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 int __affs_compare_dentry (struct dentry*,struct qstr*,struct qstr*,int ) ;
 int affs_toupper ;

__attribute__((used)) static int
affs_compare_dentry(struct dentry *dentry, struct qstr *a, struct qstr *b)
{
 return __affs_compare_dentry(dentry, a, b, affs_toupper);
}
