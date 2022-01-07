
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qelem {TYPE_2__* q_forw; TYPE_1__* q_back; } ;
struct TYPE_4__ {TYPE_1__* q_back; } ;
struct TYPE_3__ {TYPE_2__* q_forw; } ;



void
remque (struct qelem *elem)
{
  elem -> q_forw -> q_back = elem -> q_back;
  elem -> q_back -> q_forw = elem -> q_forw;
}
