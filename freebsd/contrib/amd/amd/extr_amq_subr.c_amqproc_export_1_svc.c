
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int voidp ;
struct svc_req {int dummy; } ;
typedef int amq_mount_tree_p ;
struct TYPE_3__ {int amq_mount_tree_list_len; int * amq_mount_tree_list_val; } ;
typedef TYPE_1__ amq_mount_tree_list ;
typedef int am_node ;


 int * get_exported_ap (int ) ;

amq_mount_tree_list *
amqproc_export_1_svc(voidp argp, struct svc_req *rqstp)
{
  static amq_mount_tree_list aml;
  static am_node *mp;

  mp = get_exported_ap(0);
  aml.amq_mount_tree_list_val = (amq_mount_tree_p *) ((void *) &mp);
  aml.amq_mount_tree_list_len = 1;

  return &aml;
}
