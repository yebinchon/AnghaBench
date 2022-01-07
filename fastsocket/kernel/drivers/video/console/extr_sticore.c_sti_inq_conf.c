
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ext_ptr; } ;
struct sti_struct {int lock; int glob_cfg; TYPE_1__ outptr; int inq_conf; int outptr_ext; } ;
struct sti_conf_inptr {int member_0; } ;
typedef int s32 ;


 int STI_CALL (int ,int *,struct sti_conf_inptr*,TYPE_1__*,int ) ;
 int STI_PTR (int *) ;
 int default_conf_flags ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sti_inq_conf(struct sti_struct *sti)
{
 struct sti_conf_inptr inptr = { 0, };
 unsigned long flags;
 s32 ret;

 sti->outptr.ext_ptr = STI_PTR(&sti->outptr_ext);

 do {
  spin_lock_irqsave(&sti->lock, flags);
  ret = STI_CALL(sti->inq_conf, &default_conf_flags,
   &inptr, &sti->outptr, sti->glob_cfg);
  spin_unlock_irqrestore(&sti->lock, flags);
 } while (ret == 1);
}
