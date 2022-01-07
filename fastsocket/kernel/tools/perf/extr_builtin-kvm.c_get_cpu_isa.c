
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cpuid; } ;
struct TYPE_4__ {TYPE_1__ env; } ;
struct perf_session {TYPE_2__ header; } ;


 int ENOTSUP ;
 int pr_err (char*,char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static int get_cpu_isa(struct perf_session *session)
{
 char *cpuid = session->header.env.cpuid;
 int isa;

 if (strstr(cpuid, "Intel"))
  isa = 1;
 else if (strstr(cpuid, "AMD"))
  isa = 0;
 else {
  pr_err("CPU %s is not supported.\n", cpuid);
  isa = -ENOTSUP;
 }

 return isa;
}
