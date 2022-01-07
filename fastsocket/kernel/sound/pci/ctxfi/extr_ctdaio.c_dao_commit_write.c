
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {int (* dao_commit_write ) (scalar_t__,int ,int ) ;} ;
struct TYPE_2__ {int type; } ;
struct dao {int ctrl_blk; scalar_t__ hw; TYPE_1__ daio; } ;


 int daio_device_index (int ,scalar_t__) ;
 int stub1 (scalar_t__,int ,int ) ;

__attribute__((used)) static int dao_commit_write(struct dao *dao)
{
 ((struct hw *)dao->hw)->dao_commit_write(dao->hw,
  daio_device_index(dao->daio.type, dao->hw), dao->ctrl_blk);
 return 0;
}
