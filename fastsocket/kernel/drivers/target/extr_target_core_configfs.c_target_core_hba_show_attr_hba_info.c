
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_hba {int hba_id; TYPE_1__* transport; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 char* TARGET_CORE_CONFIGFS_VERSION ;
 int sprintf (char*,char*,int,char*,char*) ;

__attribute__((used)) static ssize_t target_core_hba_show_attr_hba_info(
 struct se_hba *hba,
 char *page)
{
 return sprintf(page, "HBA Index: %d plugin: %s version: %s\n",
   hba->hba_id, hba->transport->name,
   TARGET_CORE_CONFIGFS_VERSION);
}
