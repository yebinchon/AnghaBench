
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct utsname {char* nodename; char* sysname; char* release; } ;
struct TYPE_4__ {size_t len; scalar_t__* subs; } ;
struct TYPE_3__ {TYPE_2__ object_id; int * descr; int * name; } ;


 size_t ASN_MAXOIDLEN ;
 int KERN_HOSTID ;
 char* act_getkernint (int ) ;
 int free (char*) ;
 int * malloc (size_t) ;
 TYPE_2__ oid_freeBSDVersion ;
 int sprintf (int *,char*,char*,char*,char*,char*) ;
 int * strdup (char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtoul (char*,char**,int) ;
 TYPE_1__ systemg ;
 int uname (struct utsname*) ;

int
init_actvals(void)
{
 struct utsname uts;
 char *hostid;
 size_t len;





 if (uname(&uts) == -1)
  return (-1);

 if ((systemg.name = strdup(uts.nodename)) == ((void*)0))
  return (-1);

 if ((hostid = act_getkernint(KERN_HOSTID)) == ((void*)0))
  return (-1);

 len = strlen(uts.nodename) + 1;
 len += strlen(hostid) + 1;
 len += strlen(uts.sysname) + 1;
 len += strlen(uts.release) + 1;

 if ((systemg.descr = malloc(len)) == ((void*)0)) {
  free(hostid);
  return (-1);
 }
 sprintf(systemg.descr, "%s %s %s %s", uts.nodename, hostid, uts.sysname,
     uts.release);
 free(hostid);

 return (0);
}
