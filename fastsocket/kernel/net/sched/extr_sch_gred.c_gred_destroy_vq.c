
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gred_sched_data {int dummy; } ;


 int kfree (struct gred_sched_data*) ;

__attribute__((used)) static inline void gred_destroy_vq(struct gred_sched_data *q)
{
 kfree(q);
}
