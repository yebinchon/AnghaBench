
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidp ;
struct svc_req {int dummy; } ;
typedef int amq_mount_tree_p ;
typedef int am_node ;


 int * find_ap (char*) ;

amq_mount_tree_p *
amqproc_mnttree_1_svc(voidp argp, struct svc_req *rqstp)
{
  static am_node *mp;

  mp = find_ap(*(char **) argp);
  return (amq_mount_tree_p *) ((void *)&mp);
}
