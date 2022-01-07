
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; int hash; int * name; } ;
struct nls_table {int dummy; } ;
struct dentry {int d_inode; } ;


 struct nls_table* NCP_IO_TABLE (struct dentry*) ;
 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash () ;
 int ncp_case_sensitive (int ) ;
 int ncp_tolower (struct nls_table*,int ) ;
 unsigned long partial_name_hash (int ,unsigned long) ;

__attribute__((used)) static int
ncp_hash_dentry(struct dentry *dentry, struct qstr *this)
{
 struct nls_table *t;
 unsigned long hash;
 int i;

 t = NCP_IO_TABLE(dentry);

 if (!ncp_case_sensitive(dentry->d_inode)) {
  hash = init_name_hash();
  for (i=0; i<this->len ; i++)
   hash = partial_name_hash(ncp_tolower(t, this->name[i]),
         hash);
  this->hash = end_name_hash(hash);
 }
 return 0;
}
