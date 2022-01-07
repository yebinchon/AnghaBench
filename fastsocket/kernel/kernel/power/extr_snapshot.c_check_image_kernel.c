
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int machine; int version; int release; int sysname; } ;
struct swsusp_info {scalar_t__ version_code; TYPE_1__ uts; } ;
struct TYPE_4__ {int machine; int version; int release; int sysname; } ;


 scalar_t__ LINUX_VERSION_CODE ;
 TYPE_2__* init_utsname () ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static char *check_image_kernel(struct swsusp_info *info)
{
 if (info->version_code != LINUX_VERSION_CODE)
  return "kernel version";
 if (strcmp(info->uts.sysname,init_utsname()->sysname))
  return "system type";
 if (strcmp(info->uts.release,init_utsname()->release))
  return "kernel release";
 if (strcmp(info->uts.version,init_utsname()->version))
  return "version";
 if (strcmp(info->uts.machine,init_utsname()->machine))
  return "machine";
 return ((void*)0);
}
