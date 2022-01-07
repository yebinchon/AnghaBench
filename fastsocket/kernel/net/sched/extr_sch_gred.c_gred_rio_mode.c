
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gred_sched {int flags; } ;


 int GRED_RIO_MODE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int gred_rio_mode(struct gred_sched *table)
{
 return test_bit(GRED_RIO_MODE, &table->flags);
}
