
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int rcu_head; } ;


 int call_rcu (int *,int ) ;
 int idr_layer_rcu_free ;

__attribute__((used)) static inline void free_layer(struct idr_layer *p)
{
 call_rcu(&p->rcu_head, idr_layer_rcu_free);
}
