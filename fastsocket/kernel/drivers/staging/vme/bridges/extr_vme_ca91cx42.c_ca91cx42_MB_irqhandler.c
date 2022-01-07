
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CA91CX42_LINT_MBOX ;
 int mbox_queue ;
 int wake_up (int *) ;

__attribute__((used)) static u32 ca91cx42_MB_irqhandler(int mbox_mask)
{
 wake_up(&mbox_queue);

 return CA91CX42_LINT_MBOX;
}
