
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hw; } ;
struct srcimp_mgr {TYPE_1__ mgr; } ;
struct srcimp_desc {int msr; } ;
struct TYPE_7__ {TYPE_3__* ops; } ;
struct srcimp {TYPE_2__ rsc; struct srcimp_mgr* mgr; int * ops; int imappers; int * idx; } ;
struct imapper {int dummy; } ;
struct TYPE_8__ {int (* master ) (TYPE_2__*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SRCIMP ;
 int kzalloc (int,int ) ;
 int rsc_init (TYPE_2__*,int ,int ,int,int ) ;
 int rsc_uninit (TYPE_2__*) ;
 TYPE_3__ srcimp_basic_rsc_ops ;
 int srcimp_ops ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int srcimp_rsc_init(struct srcimp *srcimp,
      const struct srcimp_desc *desc,
      struct srcimp_mgr *mgr)
{
 int err;

 err = rsc_init(&srcimp->rsc, srcimp->idx[0],
         SRCIMP, desc->msr, mgr->mgr.hw);
 if (err)
  return err;


 srcimp->imappers = kzalloc(sizeof(struct imapper)*desc->msr,
       GFP_KERNEL);
 if (!srcimp->imappers) {
  err = -ENOMEM;
  goto error1;
 }


 srcimp->rsc.ops = &srcimp_basic_rsc_ops;
 srcimp->ops = &srcimp_ops;
 srcimp->mgr = mgr;

 srcimp->rsc.ops->master(&srcimp->rsc);

 return 0;

error1:
 rsc_uninit(&srcimp->rsc);
 return err;
}
