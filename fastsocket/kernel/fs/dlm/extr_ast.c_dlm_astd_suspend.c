
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int astd_running ;
 int mutex_lock (int *) ;

void dlm_astd_suspend(void)
{
 mutex_lock(&astd_running);
}
