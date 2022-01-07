
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ parselleft ;
 scalar_t__ parsenleft ;
 int popallfiles () ;

void
resetinput(void)
{
 popallfiles();
 parselleft = parsenleft = 0;
}
