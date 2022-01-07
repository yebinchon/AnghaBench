
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsc {TYPE_1__* ops; } ;
struct hw {int (* dai_srt_set_srco ) (int ,int ) ;} ;
struct dai {int ctrl_blk; scalar_t__ hw; } ;
struct TYPE_2__ {int (* index ) (struct rsc*) ;int (* master ) (struct rsc*) ;} ;


 int stub1 (struct rsc*) ;
 int stub2 (int ,int ) ;
 int stub3 (struct rsc*) ;

__attribute__((used)) static int dai_set_srt_srcr(struct dai *dai, struct rsc *src)
{
 src->ops->master(src);
 ((struct hw *)dai->hw)->dai_srt_set_srco(dai->ctrl_blk,
      src->ops->index(src));
 return 0;
}
