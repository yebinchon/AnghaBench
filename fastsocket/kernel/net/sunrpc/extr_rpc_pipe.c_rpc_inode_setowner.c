
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {void* private; } ;


 TYPE_1__* RPC_I (struct inode*) ;

__attribute__((used)) static inline void
rpc_inode_setowner(struct inode *inode, void *private)
{
 RPC_I(inode)->private = private;
}
