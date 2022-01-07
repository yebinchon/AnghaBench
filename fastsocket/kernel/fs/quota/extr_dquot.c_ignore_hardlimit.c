
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mem_dqinfo {int dqi_flags; TYPE_1__* dqi_format; } ;
struct dquot {size_t dq_type; int dq_sb; } ;
struct TYPE_4__ {struct mem_dqinfo* info; } ;
struct TYPE_3__ {scalar_t__ qf_fmt_id; } ;


 int CAP_SYS_RESOURCE ;
 scalar_t__ QFMT_VFS_OLD ;
 int V1_DQF_RSQUASH ;
 scalar_t__ capable (int ) ;
 TYPE_2__* sb_dqopt (int ) ;

__attribute__((used)) static int ignore_hardlimit(struct dquot *dquot)
{
 struct mem_dqinfo *info = &sb_dqopt(dquot->dq_sb)->info[dquot->dq_type];

 return capable(CAP_SYS_RESOURCE) &&
        (info->dqi_format->qf_fmt_id != QFMT_VFS_OLD ||
  !(info->dqi_flags & V1_DQF_RSQUASH));
}
