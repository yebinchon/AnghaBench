
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {char* name; } ;


 char** slots ;

__attribute__((used)) static int module_slot_match(struct module *module, int idx)
{
 int match = 1;
 return match;
}
