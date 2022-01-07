
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_iocb {struct kiocb* kiocb; } ;
struct kiocb {struct sock_iocb* private; int ki_dtor; } ;


 int GFP_KERNEL ;
 int is_sync_kiocb (struct kiocb*) ;
 struct sock_iocb* kmalloc (int,int ) ;
 int sock_aio_dtor ;

__attribute__((used)) static struct sock_iocb *alloc_sock_iocb(struct kiocb *iocb,
      struct sock_iocb *siocb)
{
 if (!is_sync_kiocb(iocb)) {
  siocb = kmalloc(sizeof(*siocb), GFP_KERNEL);
  if (!siocb)
   return ((void*)0);
  iocb->ki_dtor = sock_aio_dtor;
 }

 siocb->kiocb = iocb;
 iocb->private = siocb;
 return siocb;
}
