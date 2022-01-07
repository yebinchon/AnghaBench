
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int KOBJ_CHANGE ;
 int is_world_regdom (char*) ;
 int kobject_uevent (int *,int ) ;
 int pr_info (char*,...) ;
 TYPE_2__* reg_pdev ;
 int reg_regdb_query (char const*) ;

__attribute__((used)) static int call_crda(const char *alpha2)
{
 if (!is_world_regdom((char *) alpha2))
  pr_info("Calling CRDA for country: %c%c\n",
   alpha2[0], alpha2[1]);
 else
  pr_info("Calling CRDA to update world regulatory domain\n");


 reg_regdb_query(alpha2);

 return kobject_uevent(&reg_pdev->dev.kobj, KOBJ_CHANGE);
}
