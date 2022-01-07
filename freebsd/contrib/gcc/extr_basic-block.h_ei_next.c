
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ index; } ;
typedef TYPE_1__ edge_iterator ;


 scalar_t__ EDGE_COUNT (int ) ;
 int ei_container (TYPE_1__) ;
 int gcc_assert (int) ;

__attribute__((used)) static inline void
ei_next (edge_iterator *i)
{
  gcc_assert (i->index < EDGE_COUNT (ei_container (*i)));
  i->index++;
}
