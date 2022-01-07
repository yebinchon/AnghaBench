
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_handler {size_t idiag_type; } ;
typedef size_t __u16 ;


 size_t const INET_DIAG_GETSOCK_MAX ;
 int ** inet_diag_table ;
 int inet_diag_table_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void inet_diag_unregister(const struct inet_diag_handler *h)
{
 const __u16 type = h->idiag_type;

 if (type >= INET_DIAG_GETSOCK_MAX)
  return;

 mutex_lock(&inet_diag_table_mutex);
 inet_diag_table[type] = ((void*)0);
 mutex_unlock(&inet_diag_table_mutex);
}
