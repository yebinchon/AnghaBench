
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;


 int MSG_SIZE ;
 scalar_t__* cpu_threads ;
 int* cpus_to_pin ;
 int mq_receive (int ,char*,int,int*) ;
 scalar_t__ mq_send (int ,char*,int,int ) ;
 int num_cpus_to_pin ;
 int printf (char*,int,int) ;
 scalar_t__ pthread_self () ;
 int queue ;

void *cont_thread(void *arg)
{
 char buff[MSG_SIZE];
 int i, priority;

 for (i = 0; i < num_cpus_to_pin; i++)
  if (cpu_threads[i] == pthread_self())
   break;
 printf("\tStarted continuous mode thread %d on CPU %d\n", i,
        cpus_to_pin[i]);
 while (1) {
  while(mq_send(queue, buff, sizeof(buff), 0) == 0)
   ;
  mq_receive(queue, buff, sizeof(buff), &priority);
 }
}
