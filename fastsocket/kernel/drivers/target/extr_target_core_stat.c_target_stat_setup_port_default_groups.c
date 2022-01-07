
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_group {int ** default_groups; } ;
struct TYPE_2__ {int scsi_transport_group; int scsi_tgt_port_group; int scsi_port_group; struct config_group stat_group; } ;
struct se_lun {TYPE_1__ port_stat_grps; } ;


 int config_group_init_type_name (int *,char*,int *) ;
 int target_stat_scsi_port_cit ;
 int target_stat_scsi_tgt_port_cit ;
 int target_stat_scsi_transport_cit ;

void target_stat_setup_port_default_groups(struct se_lun *lun)
{
 struct config_group *port_stat_grp = &lun->port_stat_grps.stat_group;

 config_group_init_type_name(&lun->port_stat_grps.scsi_port_group,
   "scsi_port", &target_stat_scsi_port_cit);
 config_group_init_type_name(&lun->port_stat_grps.scsi_tgt_port_group,
   "scsi_tgt_port", &target_stat_scsi_tgt_port_cit);
 config_group_init_type_name(&lun->port_stat_grps.scsi_transport_group,
   "scsi_transport", &target_stat_scsi_transport_cit);

 port_stat_grp->default_groups[0] = &lun->port_stat_grps.scsi_port_group;
 port_stat_grp->default_groups[1] = &lun->port_stat_grps.scsi_tgt_port_group;
 port_stat_grp->default_groups[2] = &lun->port_stat_grps.scsi_transport_group;
 port_stat_grp->default_groups[3] = ((void*)0);
}
