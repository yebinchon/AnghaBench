
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_handler {size_t idiag_type; } ;
typedef size_t __u16 ;


 int EEXIST ;
 int EINVAL ;
 size_t const INET_DIAG_GETSOCK_MAX ;
 struct inet_diag_handler const** inet_diag_table ;
 int inet_diag_table_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int inet_diag_register(const struct inet_diag_handler *h)
{
 const __u16 type = h->idiag_type;
 int err = -EINVAL;

 if (type >= INET_DIAG_GETSOCK_MAX)
  goto out;

 mutex_lock(&inet_diag_table_mutex);
 err = -EEXIST;
 if (inet_diag_table[type] == ((void*)0)) {
  inet_diag_table[type] = h;
  err = 0;
 }
 mutex_unlock(&inet_diag_table_mutex);
out:
 return err;
}
