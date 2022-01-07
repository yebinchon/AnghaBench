
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cacherep {scalar_t__ c_state; scalar_t__ c_timestamp; } ;


 scalar_t__ RC_EXPIRE ;
 scalar_t__ RC_INPROG ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static inline bool
nfsd_cache_entry_expired(struct svc_cacherep *rp)
{
 return rp->c_state != RC_INPROG &&
        time_after(jiffies, rp->c_timestamp + RC_EXPIRE);
}
