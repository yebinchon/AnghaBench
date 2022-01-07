
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int in_nmi () ;
 scalar_t__ likely (int) ;
 int tracing_off_permanent () ;

__attribute__((used)) static inline int rb_ok_to_lock(void)
{






 if (likely(!in_nmi()))
  return 1;

 tracing_off_permanent();
 return 0;
}
