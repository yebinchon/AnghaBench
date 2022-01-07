
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {TYPE_1__* ops; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int (* set_options ) (struct vport*,struct nlattr*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct vport*,struct nlattr*) ;

int ovs_vport_set_options(struct vport *vport, struct nlattr *options)
{
 if (!vport->ops->set_options)
  return -EOPNOTSUPP;
 return vport->ops->set_options(vport, options);
}
