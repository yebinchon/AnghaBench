
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ security; } ;
struct sem_array {TYPE_1__ sem_perm; } ;



__attribute__((used)) static char *smack_of_sem(struct sem_array *sma)
{
 return (char *)sma->sem_perm.security;
}
