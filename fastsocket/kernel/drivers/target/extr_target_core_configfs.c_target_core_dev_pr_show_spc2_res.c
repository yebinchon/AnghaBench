
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_node_acl {char* initiatorname; TYPE_2__* se_tpg; } ;
struct se_device {struct se_node_acl* dev_reserved_node_acl; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* se_tpg_tfo; } ;
struct TYPE_3__ {char* (* get_fabric_name ) () ;} ;


 int sprintf (char*,char*,...) ;
 char* stub1 () ;
 char* stub2 () ;

__attribute__((used)) static ssize_t target_core_dev_pr_show_spc2_res(struct se_device *dev,
  char *page)
{
 struct se_node_acl *se_nacl;
 ssize_t len;

 se_nacl = dev->dev_reserved_node_acl;
 if (se_nacl) {
  len = sprintf(page,
         "SPC-2 Reservation: %s Initiator: %s\n",
         se_nacl->se_tpg->se_tpg_tfo->get_fabric_name(),
         se_nacl->initiatorname);
 } else {
  len = sprintf(page, "No SPC-2 Reservation holder\n");
 }
 return len;
}
