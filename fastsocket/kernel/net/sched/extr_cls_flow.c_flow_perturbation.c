
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_filter {scalar_t__ perturb_period; int perturb_timer; int hashrnd; } ;


 int get_random_bytes (int *,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void flow_perturbation(unsigned long arg)
{
 struct flow_filter *f = (struct flow_filter *)arg;

 get_random_bytes(&f->hashrnd, 4);
 if (f->perturb_period)
  mod_timer(&f->perturb_timer, jiffies + f->perturb_period);
}
