
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;

void
error_no_arg (char *why)
{
  error ("Argument required (%s).", why);
}
