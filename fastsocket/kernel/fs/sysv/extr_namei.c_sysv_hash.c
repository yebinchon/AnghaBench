
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {scalar_t__ len; int name; int hash; } ;
struct dentry {int dummy; } ;


 scalar_t__ SYSV_NAMELEN ;
 int full_name_hash (int ,scalar_t__) ;

__attribute__((used)) static int sysv_hash(struct dentry *dentry, struct qstr *qstr)
{


 if (qstr->len > SYSV_NAMELEN) {
  qstr->len = SYSV_NAMELEN;
  qstr->hash = full_name_hash(qstr->name, qstr->len);
 }
 return 0;
}
