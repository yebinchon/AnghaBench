
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpoa_client {int dev_num; struct mpoa_client* next; } ;


 struct mpoa_client* mpcs ;

__attribute__((used)) static struct mpoa_client *find_mpc_by_itfnum(int itf)
{
 struct mpoa_client *mpc;

 mpc = mpcs;
 while (mpc != ((void*)0)) {
  if (mpc->dev_num == itf)
   return mpc;
  mpc = mpc->next;
 }

 return ((void*)0);
}
