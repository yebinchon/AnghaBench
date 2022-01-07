
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {int interface; int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int in_dev_put (int ) ;
 int kfree (struct ip_mc_list*) ;

__attribute__((used)) static void ip_ma_put(struct ip_mc_list *im)
{
 if (atomic_dec_and_test(&im->refcnt)) {
  in_dev_put(im->interface);
  kfree(im);
 }
}
