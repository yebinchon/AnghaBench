
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* __d_lookup (struct dentry*,struct qstr*) ;
 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 int rename_lock ;

struct dentry * d_lookup(struct dentry * parent, struct qstr * name)
{
 struct dentry * dentry = ((void*)0);
 unsigned long seq;

        do {
                seq = read_seqbegin(&rename_lock);
                dentry = __d_lookup(parent, name);
                if (dentry)
   break;
 } while (read_seqretry(&rename_lock, seq));
 return dentry;
}
