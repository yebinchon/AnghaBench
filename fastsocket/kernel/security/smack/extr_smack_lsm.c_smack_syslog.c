
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* smk_known; } ;


 int CAP_MAC_OVERRIDE ;
 int EACCES ;
 int cap_syslog (int) ;
 scalar_t__ capable (int ) ;
 char* current_security () ;
 TYPE_1__ smack_known_floor ;

__attribute__((used)) static int smack_syslog(int type)
{
 int rc;
 char *sp = current_security();

 rc = cap_syslog(type);
 if (rc != 0)
  return rc;

 if (capable(CAP_MAC_OVERRIDE))
  return 0;

  if (sp != smack_known_floor.smk_known)
  rc = -EACCES;

 return rc;
}
