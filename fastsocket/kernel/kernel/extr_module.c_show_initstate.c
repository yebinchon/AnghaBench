
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_attribute {int dummy; } ;
struct module {int state; } ;
typedef int ssize_t ;





 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t show_initstate(struct module_attribute *mattr,
      struct module *mod, char *buffer)
{
 const char *state = "unknown";

 switch (mod->state) {
 case 128:
  state = "live";
  break;
 case 130:
  state = "coming";
  break;
 case 129:
  state = "going";
  break;
 }
 return sprintf(buffer, "%s\n", state);
}
