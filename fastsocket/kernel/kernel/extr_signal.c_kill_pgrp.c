
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 int __kill_pgrp_info (int,int ,struct pid*) ;
 int __si_special (int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int tasklist_lock ;

int kill_pgrp(struct pid *pid, int sig, int priv)
{
 int ret;

 read_lock(&tasklist_lock);
 ret = __kill_pgrp_info(sig, __si_special(priv), pid);
 read_unlock(&tasklist_lock);

 return ret;
}
