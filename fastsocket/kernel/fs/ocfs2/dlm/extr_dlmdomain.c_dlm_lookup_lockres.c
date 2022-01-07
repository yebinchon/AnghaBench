
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int dummy; } ;
struct dlm_ctxt {int spinlock; } ;


 struct dlm_lock_resource* __dlm_lookup_lockres (struct dlm_ctxt*,char const*,unsigned int,unsigned int) ;
 unsigned int dlm_lockid_hash (char const*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dlm_lock_resource * dlm_lookup_lockres(struct dlm_ctxt *dlm,
        const char *name,
        unsigned int len)
{
 struct dlm_lock_resource *res;
 unsigned int hash = dlm_lockid_hash(name, len);

 spin_lock(&dlm->spinlock);
 res = __dlm_lookup_lockres(dlm, name, len, hash);
 spin_unlock(&dlm->spinlock);
 return res;
}
