
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int dummy; } ;


 int kernel_client_enqueue (int,struct snd_seq_event*,int *,int ,int,int) ;

int snd_seq_kernel_client_enqueue(int client, struct snd_seq_event * ev,
      int atomic, int hop)
{
 return kernel_client_enqueue(client, ev, ((void*)0), 0, atomic, hop);
}
