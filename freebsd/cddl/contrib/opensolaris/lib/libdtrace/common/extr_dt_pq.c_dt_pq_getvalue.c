
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint_t ;
typedef int uint64_t ;
struct TYPE_3__ {int dtpq_arg; int (* dtpq_value ) (void*,int ) ;void** dtpq_items; } ;
typedef TYPE_1__ dt_pq_t ;


 int stub1 (void*,int ) ;

__attribute__((used)) static uint64_t
dt_pq_getvalue(dt_pq_t *p, uint_t index)
{
 void *item = p->dtpq_items[index];
 return (p->dtpq_value(item, p->dtpq_arg));
}
