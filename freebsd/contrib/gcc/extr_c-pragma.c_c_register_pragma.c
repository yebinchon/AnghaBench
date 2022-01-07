
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pragma_handler ;


 int c_register_pragma_1 (char const*,char const*,int ,int) ;

void
c_register_pragma (const char *space, const char *name, pragma_handler handler)
{
  c_register_pragma_1 (space, name, handler, 0);
}
