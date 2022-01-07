
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct utsname {void* machine; } ;
struct amu_global_options {int dummy; } ;
struct TYPE_3__ {char* auto_dir; char* pid_file; int* amfs_auto_retrans; int* amfs_auto_timeo; char* hesiod_base; int ldap_cache_maxmem; int ldap_proto_version; int * nis_domain; scalar_t__ ldap_cache_seconds; int * ldap_hostports; int * ldap_base; int flags; int map_reload_interval; int am_timeo_w; int am_timeo; int * sub_domain; int op_sys_vendor; int op_sys_full; int op_sys_ver; int op_sys; int * logfile; void* karch; int exec_map_timeout; int * cluster; scalar_t__ auto_attrcache; void* arch; } ;


 int AMFS_EXEC_MAP_TIMEOUT ;
 int AMU_TYPE_MAX ;
 int AM_TTL ;
 int AM_TTL_W ;
 int CFM_DEFAULT_FLAGS ;
 void* HOST_ARCH ;
 int HOST_OS ;
 int HOST_OS_NAME ;
 int HOST_OS_VERSION ;
 int HOST_VENDOR ;
 int ONE_HOUR ;
 TYPE_1__ gopt ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static void
init_global_options(void)
{



  int i;

  memset(&gopt, 0, sizeof(struct amu_global_options));


  gopt.arch = HOST_ARCH;


  gopt.auto_dir = "/.amd_mnt";


  gopt.auto_attrcache = 0;


  gopt.cluster = ((void*)0);


  gopt.exec_map_timeout = AMFS_EXEC_MAP_TIMEOUT;
    gopt.karch = HOST_ARCH;


  gopt.logfile = ((void*)0);


  gopt.op_sys = HOST_OS_NAME;


  gopt.op_sys_ver = HOST_OS_VERSION;


  gopt.op_sys_full = HOST_OS;


  gopt.op_sys_vendor = HOST_VENDOR;


  gopt.pid_file = "/dev/stdout";


  gopt.sub_domain = ((void*)0);


  for (i=0; i<AMU_TYPE_MAX; ++i) {
    gopt.amfs_auto_retrans[i] = -1;
    gopt.amfs_auto_timeo[i] = -1;
  }


  gopt.am_timeo = AM_TTL;


  gopt.am_timeo_w = AM_TTL_W;


  gopt.map_reload_interval = ONE_HOUR;




  gopt.flags = CFM_DEFAULT_FLAGS;
}
