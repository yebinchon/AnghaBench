
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* push ) (char const*) ;} ;


 TYPE_1__* helpline_fns ;
 int stub1 (char const*) ;

void ui_helpline__push(const char *msg)
{
 helpline_fns->push(msg);
}
