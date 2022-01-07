
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsm_shared {int state; } ;


 int ID_SHARED_STATE ;
 int SMSM_RESET ;
 int handle_modem_crash () ;
 struct smsm_shared* smem_find (int ,int) ;

__attribute__((used)) static int check_for_modem_crash(void)
{
 struct smsm_shared *smsm;

 smsm = smem_find(ID_SHARED_STATE, 2 * sizeof(struct smsm_shared));


 if (!smsm)
  return 0;

 if (smsm[1].state & SMSM_RESET) {
  handle_modem_crash();
  return -1;
 } else {
  return 0;
 }
}
