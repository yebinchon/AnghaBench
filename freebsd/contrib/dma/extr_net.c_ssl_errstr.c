
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ERR_error_string (long,int *) ;
 long ERR_get_error () ;

char *
ssl_errstr(void)
{
 long oerr, nerr;

 oerr = 0;
 while ((nerr = ERR_get_error()) != 0)
  oerr = nerr;

 return (ERR_error_string(oerr, ((void*)0)));
}
