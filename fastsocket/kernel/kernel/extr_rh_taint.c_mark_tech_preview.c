
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {char* name; unsigned int taints; } ;


 unsigned int TAINT_TECH_PREVIEW ;
 int add_taint (unsigned int) ;
 int pr_warning (char*,char const*) ;

void mark_tech_preview(const char *msg, struct module *mod)
{
 const char *str = ((void*)0);

 if (msg)
  str = msg;
 else if (mod && mod->name)
  str = mod->name;

 pr_warning("TECH PREVIEW: %s may not be fully supported.\n"
     "Please review provided documentation for limitations.\n",
     (str ? str : "kernel"));
 add_taint(TAINT_TECH_PREVIEW);
 if (mod)
         mod->taints |= (1U << TAINT_TECH_PREVIEW);
}
