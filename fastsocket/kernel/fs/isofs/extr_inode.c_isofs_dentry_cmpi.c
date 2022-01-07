
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 int isofs_dentry_cmpi_common (struct dentry*,struct qstr*,struct qstr*,int ) ;

__attribute__((used)) static int
isofs_dentry_cmpi(struct dentry *dentry,struct qstr *a,struct qstr *b)
{
 return isofs_dentry_cmpi_common(dentry, a, b, 0);
}
