
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int private; } ;


 int kfree (int ) ;

__attribute__((used)) static void sock_aio_dtor(struct kiocb *iocb)
{
 kfree(iocb->private);
}
