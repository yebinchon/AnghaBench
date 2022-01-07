
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;


 int put_rsb (struct dlm_rsb*) ;

void dlm_put_rsb(struct dlm_rsb *r)
{
 put_rsb(r);
}
