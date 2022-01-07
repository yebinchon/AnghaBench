
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i1480 {int hw_rev; int evt_complete; } ;


 int init_completion (int *) ;

__attribute__((used)) static inline
void i1480_init(struct i1480 *i1480)
{
 i1480->hw_rev = 1;
 init_completion(&i1480->evt_complete);
}
