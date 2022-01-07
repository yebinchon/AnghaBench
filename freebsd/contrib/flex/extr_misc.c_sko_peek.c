
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dc; } ;


 int flex_die (char*) ;
 int sko_len ;
 TYPE_1__* sko_stack ;

__attribute__((used)) static void sko_peek(bool *dc)
{
    if(sko_len <= 0)
        flex_die("peek attempt when sko stack is empty");
    if(dc)
        *dc = sko_stack[sko_len-1].dc;
}
