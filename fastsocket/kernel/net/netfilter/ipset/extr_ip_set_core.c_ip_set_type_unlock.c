
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip_set_type_mutex ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void
ip_set_type_unlock(void)
{
 mutex_unlock(&ip_set_type_mutex);
}
