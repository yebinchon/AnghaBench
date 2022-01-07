
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_last_request () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_mutex ;
 int reg_request_cell_base (int ) ;

bool reg_last_request_cell_base(void)
{
 bool val;

 mutex_lock(&reg_mutex);
 val = reg_request_cell_base(get_last_request());
 mutex_unlock(&reg_mutex);

 return val;
}
