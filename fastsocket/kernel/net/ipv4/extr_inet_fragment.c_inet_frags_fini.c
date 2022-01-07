
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_frags {int secret_timer; } ;


 int del_timer (int *) ;

void inet_frags_fini(struct inet_frags *f)
{
 del_timer(&f->secret_timer);
}
