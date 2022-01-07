
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int rate_ctrl_priv; struct rate_control_ref* rate_ctrl; } ;
struct rate_control_ref {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* remove_sta_debugfs ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static inline void rate_control_remove_sta_debugfs(struct sta_info *sta)
{





}
