
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int dummy; } ;
struct se_lun {int dummy; } ;


 int core_clear_lun_from_tpg (struct se_lun*,struct se_portal_group*) ;
 int transport_clear_lun_from_sessions (struct se_lun*) ;

__attribute__((used)) static void core_tpg_shutdown_lun(
 struct se_portal_group *tpg,
 struct se_lun *lun)
{
 core_clear_lun_from_tpg(lun, tpg);
 transport_clear_lun_from_sessions(lun);
}
