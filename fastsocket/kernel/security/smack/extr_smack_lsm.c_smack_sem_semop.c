
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sembuf {int dummy; } ;
struct sem_array {int dummy; } ;


 int MAY_READWRITE ;
 int smk_curacc_sem (struct sem_array*,int ) ;

__attribute__((used)) static int smack_sem_semop(struct sem_array *sma, struct sembuf *sops,
      unsigned nsops, int alter)
{
 return smk_curacc_sem(sma, MAY_READWRITE);
}
