
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipflags1; int iptrgcls; int ipmsgid; int ippathid; } ;
union iucv_param {TYPE_1__ db; } ;
struct iucv_path {int pathid; } ;
struct iucv_message {int class; int id; } ;


 int EIO ;
 int IUCV_IPFGMID ;
 int IUCV_IPFGPID ;
 int IUCV_IPTRGCLS ;
 int IUCV_REJECT ;
 scalar_t__ cpus_empty (int ) ;
 int iucv_buffer_cpumask ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 union iucv_param** iucv_param ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int memset (union iucv_param*,int ,int) ;
 size_t smp_processor_id () ;

int iucv_message_reject(struct iucv_path *path, struct iucv_message *msg)
{
 union iucv_param *parm;
 int rc;

 local_bh_disable();
 if (cpus_empty(iucv_buffer_cpumask)) {
  rc = -EIO;
  goto out;
 }
 parm = iucv_param[smp_processor_id()];
 memset(parm, 0, sizeof(union iucv_param));
 parm->db.ippathid = path->pathid;
 parm->db.ipmsgid = msg->id;
 parm->db.iptrgcls = msg->class;
 parm->db.ipflags1 = (IUCV_IPTRGCLS | IUCV_IPFGMID | IUCV_IPFGPID);
 rc = iucv_call_b2f0(IUCV_REJECT, parm);
out:
 local_bh_enable();
 return rc;
}
