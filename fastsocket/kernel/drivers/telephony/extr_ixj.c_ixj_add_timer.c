
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {TYPE_3__ timer; } ;
typedef TYPE_1__ IXJ ;


 int add_timer (TYPE_3__*) ;
 int hertz ;
 scalar_t__ jiffies ;
 int samplerate ;

__attribute__((used)) static void ixj_add_timer(IXJ *j)
{
 j->timer.expires = jiffies + (hertz / samplerate);
 add_timer(&j->timer);
}
