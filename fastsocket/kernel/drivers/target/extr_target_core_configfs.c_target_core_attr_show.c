
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct configfs_attribute {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* sysname; char* machine; char* release; } ;


 char* TARGET_CORE_CONFIGFS_VERSION ;
 int sprintf (char*,char*,char*,char*,char*,char*) ;
 TYPE_1__* utsname () ;

__attribute__((used)) static ssize_t target_core_attr_show(struct config_item *item,
          struct configfs_attribute *attr,
          char *page)
{
 return sprintf(page, "Target Engine Core ConfigFS Infrastructure %s"
  " on %s/%s on %s\n", TARGET_CORE_CONFIGFS_VERSION,
         utsname()->sysname, utsname()->machine, utsname()->release);
}
