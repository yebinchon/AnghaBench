
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sembuf {int dummy; } ;
struct sem_array {int dummy; } ;
struct TYPE_2__ {int (* sem_semop ) (struct sem_array*,struct sembuf*,unsigned int,int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct sem_array*,struct sembuf*,unsigned int,int) ;

int security_sem_semop(struct sem_array *sma, struct sembuf *sops,
   unsigned nsops, int alter)
{
 return security_ops->sem_semop(sma, sops, nsops, alter);
}
