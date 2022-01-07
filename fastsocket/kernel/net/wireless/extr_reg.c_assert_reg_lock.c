
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lockdep_assert_held (int *) ;
 int reg_mutex ;

__attribute__((used)) static inline void assert_reg_lock(void)
{
 lockdep_assert_held(&reg_mutex);
}
