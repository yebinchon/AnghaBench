
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {scalar_t__ len; int name; } ;
struct dentry {int d_inode; } ;


 int NCP_IO_TABLE (struct dentry*) ;
 scalar_t__ ncp_case_sensitive (int ) ;
 int ncp_strnicmp (int ,int ,int ,scalar_t__) ;
 int strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
ncp_compare_dentry(struct dentry *dentry, struct qstr *a, struct qstr *b)
{
 if (a->len != b->len)
  return 1;

 if (ncp_case_sensitive(dentry->d_inode))
  return strncmp(a->name, b->name, a->len);

 return ncp_strnicmp(NCP_IO_TABLE(dentry), a->name, b->name, a->len);
}
