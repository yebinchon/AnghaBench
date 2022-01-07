
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct file {int dummy; } ;
struct av_decision {int flags; int seqno; int auditdeny; int auditallow; int allowed; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SECURITY__COMPUTE_AV ;
 int SIMPLE_TRANSACTION_LIMIT ;
 int current ;
 int kfree (char*) ;
 char* kzalloc (size_t,int ) ;
 int scnprintf (char*,int ,char*,int ,int,int ,int ,int ,int ) ;
 int security_compute_av_user (int ,int ,int ,struct av_decision*) ;
 int security_context_to_sid (char*,scalar_t__,int *) ;
 int sscanf (char*,char*,char*,char*,int *) ;
 scalar_t__ strlen (char*) ;
 int task_has_security (int ,int ) ;

__attribute__((used)) static ssize_t sel_write_access(struct file *file, char *buf, size_t size)
{
 char *scon, *tcon;
 u32 ssid, tsid;
 u16 tclass;
 struct av_decision avd;
 ssize_t length;

 length = task_has_security(current, SECURITY__COMPUTE_AV);
 if (length)
  return length;

 length = -ENOMEM;
 scon = kzalloc(size+1, GFP_KERNEL);
 if (!scon)
  return length;

 tcon = kzalloc(size+1, GFP_KERNEL);
 if (!tcon)
  goto out;

 length = -EINVAL;
 if (sscanf(buf, "%s %s %hu", scon, tcon, &tclass) != 3)
  goto out2;

 length = security_context_to_sid(scon, strlen(scon)+1, &ssid);
 if (length < 0)
  goto out2;
 length = security_context_to_sid(tcon, strlen(tcon)+1, &tsid);
 if (length < 0)
  goto out2;

 security_compute_av_user(ssid, tsid, tclass, &avd);

 length = scnprintf(buf, SIMPLE_TRANSACTION_LIMIT,
     "%x %x %x %x %u %x",
     avd.allowed, 0xffffffff,
     avd.auditallow, avd.auditdeny,
     avd.seqno, avd.flags);
out2:
 kfree(tcon);
out:
 kfree(scon);
 return length;
}
