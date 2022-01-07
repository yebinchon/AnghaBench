
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dir; } ;
struct sta_info {TYPE_2__ debugfs; int rate_ctrl_priv; struct rate_control_ref* rate_ctrl; } ;
struct rate_control_ref {int priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* add_sta_debugfs ) (int ,int ,scalar_t__) ;} ;


 int stub1 (int ,int ,scalar_t__) ;

__attribute__((used)) static inline void rate_control_add_sta_debugfs(struct sta_info *sta)
{






}
