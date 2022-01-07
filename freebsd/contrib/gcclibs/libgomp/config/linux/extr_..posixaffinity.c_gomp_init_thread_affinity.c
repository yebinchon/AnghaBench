
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_attr_t ;



void
gomp_init_thread_affinity (pthread_attr_t *attr)
{
  (void) attr;
}
