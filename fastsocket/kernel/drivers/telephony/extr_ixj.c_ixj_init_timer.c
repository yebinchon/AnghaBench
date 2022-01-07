
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long data; int function; } ;
struct TYPE_4__ {TYPE_3__ timer; } ;
typedef TYPE_1__ IXJ ;


 int init_timer (TYPE_3__*) ;
 int ixj_timeout ;

__attribute__((used)) static void ixj_init_timer(IXJ *j)
{
 init_timer(&j->timer);
 j->timer.function = ixj_timeout;
 j->timer.data = (unsigned long)j;
}
