
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tsk; } ;
struct kiocb {TYPE_1__ ki_obj; } ;


 scalar_t__ is_sync_kiocb (struct kiocb*) ;
 int kiocbSetKicked (struct kiocb*) ;
 int try_queue_kicked_iocb (struct kiocb*) ;
 int wake_up_process (int ) ;

void kick_iocb(struct kiocb *iocb)
{


 if (is_sync_kiocb(iocb)) {
  kiocbSetKicked(iocb);
         wake_up_process(iocb->ki_obj.tsk);
  return;
 }

 try_queue_kicked_iocb(iocb);
}
