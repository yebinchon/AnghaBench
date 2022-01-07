
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_op {int dummy; } ;
struct TYPE_2__ {int op_flags; } ;


 TYPE_1__* OPDESC (struct nfsd4_op*) ;
 int OP_CACHEME ;

bool nfsd4_cache_this_op(struct nfsd4_op *op)
{
 return OPDESC(op)->op_flags & OP_CACHEME;
}
