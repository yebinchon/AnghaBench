
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ctl_table ;


 int DIR__SEARCH ;
 int FILE__READ ;
 int FILE__WRITE ;
 int SECCLASS_DIR ;
 int SECCLASS_FILE ;
 int SECINITSID_SYSCTL ;
 int avc_has_perm (int,int,int ,int,int *) ;
 int current_sid () ;
 int selinux_sysctl_get_sid (int *,int ,int*) ;

__attribute__((used)) static int selinux_sysctl(ctl_table *table, int op)
{
 int error = 0;
 u32 av;
 u32 tsid, sid;
 int rc;

 sid = current_sid();

 rc = selinux_sysctl_get_sid(table, (op == 0001) ?
        SECCLASS_DIR : SECCLASS_FILE, &tsid);
 if (rc) {

  tsid = SECINITSID_SYSCTL;
 }



 if (op == 001) {
  error = avc_has_perm(sid, tsid,
         SECCLASS_DIR, DIR__SEARCH, ((void*)0));
 } else {
  av = 0;
  if (op & 004)
   av |= FILE__READ;
  if (op & 002)
   av |= FILE__WRITE;
  if (av)
   error = avc_has_perm(sid, tsid,
          SECCLASS_FILE, av, ((void*)0));
 }

 return error;
}
