
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ index; } ;
typedef TYPE_1__ edge_iterator ;


 int gcc_assert (int) ;

__attribute__((used)) static inline void
ei_prev (edge_iterator *i)
{
  gcc_assert (i->index > 0);
  i->index--;
}
