
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rate_control_ref {TYPE_3__* ops; TYPE_2__* local; int priv; } ;
struct TYPE_6__ {int (* free ) (int ) ;} ;
struct TYPE_4__ {int * rcdir; } ;
struct TYPE_5__ {TYPE_1__ debugfs; } ;


 int debugfs_remove_recursive (int *) ;
 int ieee80211_rate_control_ops_put (TYPE_3__*) ;
 int kfree (struct rate_control_ref*) ;
 int stub1 (int ) ;

__attribute__((used)) static void rate_control_free(struct rate_control_ref *ctrl_ref)
{
 ctrl_ref->ops->free(ctrl_ref->priv);






 ieee80211_rate_control_ops_put(ctrl_ref->ops);
 kfree(ctrl_ref);
}
