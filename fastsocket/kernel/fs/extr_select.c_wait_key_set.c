
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; } ;
typedef TYPE_1__ poll_table ;


 int POLLEX_SET ;
 int POLLIN_SET ;
 int POLLOUT_SET ;

__attribute__((used)) static inline void wait_key_set(poll_table *wait, unsigned long in,
    unsigned long out, unsigned long bit)
{
 if (wait) {
  wait->key = POLLEX_SET;
  if (in & bit)
   wait->key |= POLLIN_SET;
  if (out & bit)
   wait->key |= POLLOUT_SET;
 }
}
