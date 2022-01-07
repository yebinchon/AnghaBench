
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wa_xfer {TYPE_1__* wa; int id; } ;
struct TYPE_2__ {int xfer_id_count; } ;


 int atomic_add_return (int,int *) ;

__attribute__((used)) static void wa_xfer_id_init(struct wa_xfer *xfer)
{
 xfer->id = atomic_add_return(1, &xfer->wa->xfer_id_count);
}
