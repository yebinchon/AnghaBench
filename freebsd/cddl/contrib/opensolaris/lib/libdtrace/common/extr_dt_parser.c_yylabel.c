
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* pcb_region; } ;


 int dt_dprintf (char*,char const*) ;
 TYPE_1__* yypcb ;

void
yylabel(const char *label)
{
 dt_dprintf("set label to <%s>\n", label ? label : "NULL");
 yypcb->pcb_region = label;
}
