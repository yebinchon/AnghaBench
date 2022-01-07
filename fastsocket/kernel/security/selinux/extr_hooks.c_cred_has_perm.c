
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cred {int dummy; } ;


 int SECCLASS_PROCESS ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int cred_sid (struct cred const*) ;

__attribute__((used)) static int cred_has_perm(const struct cred *actor,
    const struct cred *target,
    u32 perms)
{
 u32 asid = cred_sid(actor), tsid = cred_sid(target);

 return avc_has_perm(asid, tsid, SECCLASS_PROCESS, perms, ((void*)0));
}
