
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sem_array {int dummy; } ;
struct TYPE_2__ {int (* sem_alloc_security ) (struct sem_array*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct sem_array*) ;

int security_sem_alloc(struct sem_array *sma)
{
 return security_ops->sem_alloc_security(sma);
}
