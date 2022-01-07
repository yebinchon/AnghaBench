
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {int use; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void
instance_get(struct nfulnl_instance *inst)
{
 atomic_inc(&inst->use);
}
