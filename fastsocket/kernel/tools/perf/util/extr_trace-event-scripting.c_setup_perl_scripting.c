
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perl_scripting_ops ;
 int register_perl_scripting (int *) ;

void setup_perl_scripting(void)
{
 register_perl_scripting(&perl_scripting_ops);
}
