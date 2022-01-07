
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_scripting_ops ;
 int * scripting_ops ;
 int setup_perl_scripting () ;
 int setup_python_scripting () ;

__attribute__((used)) static void setup_scripting(void)
{
 setup_perl_scripting();
 setup_python_scripting();

 scripting_ops = &default_scripting_ops;
}
