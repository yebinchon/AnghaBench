
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* action ) (struct softirq_action*) ;} ;


 TYPE_1__* softirq_vec ;

void open_softirq(int nr, void (*action)(struct softirq_action *))
{
 softirq_vec[nr].action = action;
}
