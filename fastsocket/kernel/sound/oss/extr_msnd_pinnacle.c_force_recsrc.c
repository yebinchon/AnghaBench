
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ recsrc; } ;


 TYPE_1__ dev ;
 unsigned long set_recsrc (unsigned long) ;

__attribute__((used)) static unsigned long force_recsrc(unsigned long recsrc)
{
 dev.recsrc = 0;
 return set_recsrc(recsrc);
}
