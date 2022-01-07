
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {int (* dai_commit_write ) (scalar_t__,int ,int ) ;} ;
struct TYPE_2__ {int type; } ;
struct dai {int ctrl_blk; scalar_t__ hw; TYPE_1__ daio; } ;


 int daio_device_index (int ,scalar_t__) ;
 int stub1 (scalar_t__,int ,int ) ;

__attribute__((used)) static int dai_commit_write(struct dai *dai)
{
 ((struct hw *)dai->hw)->dai_commit_write(dai->hw,
  daio_device_index(dai->daio.type, dai->hw), dai->ctrl_blk);
 return 0;
}
