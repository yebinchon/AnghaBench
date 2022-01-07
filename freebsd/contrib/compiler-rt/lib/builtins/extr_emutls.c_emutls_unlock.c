
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emutls_mutex ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static __inline void emutls_unlock() { pthread_mutex_unlock(&emutls_mutex); }
