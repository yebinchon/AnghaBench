
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inode; } ;
typedef TYPE_1__ ext4_io_end_t ;


 int BUG_ON (int) ;
 int iput (int ) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void ext4_free_io_end(ext4_io_end_t *io)
{
 BUG_ON(!io);
 iput(io->inode);
 kfree(io);
}
