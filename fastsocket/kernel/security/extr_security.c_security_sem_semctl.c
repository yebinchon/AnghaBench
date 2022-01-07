
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sem_array {int dummy; } ;
struct TYPE_2__ {int (* sem_semctl ) (struct sem_array*,int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct sem_array*,int) ;

int security_sem_semctl(struct sem_array *sma, int cmd)
{
 return security_ops->sem_semctl(sma, cmd);
}
