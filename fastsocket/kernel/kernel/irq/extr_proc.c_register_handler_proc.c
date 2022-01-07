
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {char* name; scalar_t__ dir; } ;
struct irq_desc {int dir; } ;


 int MAX_NAMELEN ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int memset (char*,int ,int) ;
 int name_unique (unsigned int,struct irqaction*) ;
 scalar_t__ proc_mkdir (char*,int ) ;
 int snprintf (char*,int,char*,char*) ;

void register_handler_proc(unsigned int irq, struct irqaction *action)
{
 char name [MAX_NAMELEN];
 struct irq_desc *desc = irq_to_desc(irq);

 if (!desc->dir || action->dir || !action->name ||
     !name_unique(irq, action))
  return;

 memset(name, 0, MAX_NAMELEN);
 snprintf(name, MAX_NAMELEN, "%s", action->name);


 action->dir = proc_mkdir(name, desc->dir);
}
