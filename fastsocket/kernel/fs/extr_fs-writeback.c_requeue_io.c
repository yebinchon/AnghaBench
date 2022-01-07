
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_list; } ;
struct bdi_writeback {int b_more_io; } ;
struct TYPE_2__ {struct bdi_writeback wb; } ;


 TYPE_1__* inode_to_bdi (struct inode*) ;
 int list_move (int *,int *) ;

__attribute__((used)) static void requeue_io(struct inode *inode)
{
 struct bdi_writeback *wb = &inode_to_bdi(inode)->wb;

 list_move(&inode->i_list, &wb->b_more_io);
}
