
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {int list; int work; scalar_t__ result; int * iocb; scalar_t__ error; scalar_t__ size; scalar_t__ offset; scalar_t__ flag; struct inode* inode; } ;
typedef TYPE_1__ ext4_io_end_t ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int ext4_end_aio_dio_work ;
 int igrab (struct inode*) ;
 TYPE_1__* kmalloc (int,int ) ;

__attribute__((used)) static ext4_io_end_t *ext4_init_io_end (struct inode *inode)
{
 ext4_io_end_t *io = ((void*)0);

 io = kmalloc(sizeof(*io), GFP_NOFS);

 if (io) {
  igrab(inode);
  io->inode = inode;
  io->flag = 0;
  io->offset = 0;
  io->size = 0;
  io->error = 0;
  io->iocb = ((void*)0);
  io->result = 0;
  INIT_WORK(&io->work, ext4_end_aio_dio_work);
  INIT_LIST_HEAD(&io->list);
 }

 return io;
}
