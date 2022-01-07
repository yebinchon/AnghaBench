
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nl_nonroot; } ;


 unsigned int MAX_LINKS ;
 TYPE_1__* nl_table ;

void netlink_set_nonroot(int protocol, unsigned int flags)
{
 if ((unsigned int)protocol < MAX_LINKS)
  nl_table[protocol].nl_nonroot = flags;
}
