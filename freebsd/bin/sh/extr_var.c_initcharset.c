
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int initial_localeisutf8 ;
 int localeisutf8 ;
 int updatecharset () ;

void
initcharset(void)
{
 updatecharset();
 initial_localeisutf8 = localeisutf8;
}
