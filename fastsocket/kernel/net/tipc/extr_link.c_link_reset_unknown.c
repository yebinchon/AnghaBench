
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {scalar_t__ state; } ;


 scalar_t__ RESET_UNKNOWN ;

__attribute__((used)) static int link_reset_unknown(struct link *l_ptr)
{
 return (l_ptr->state == RESET_UNKNOWN);
}
