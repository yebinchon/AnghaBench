
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct menu {int * prompt; struct menu* next; struct menu* list; int lineno; TYPE_2__* file; TYPE_1__* sym; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int * name; } ;


 int menu_get_help (struct menu*) ;
 int menu_get_prompt (struct menu*) ;
 scalar_t__ menu_has_help (struct menu*) ;
 int message__add (int ,int *,char*,int ) ;

__attribute__((used)) static void menu_build_message_list(struct menu *menu)
{
 struct menu *child;

 message__add(menu_get_prompt(menu), ((void*)0),
       menu->file == ((void*)0) ? "Root Menu" : menu->file->name,
       menu->lineno);

 if (menu->sym != ((void*)0) && menu_has_help(menu))
  message__add(menu_get_help(menu), menu->sym->name,
        menu->file == ((void*)0) ? "Root Menu" : menu->file->name,
        menu->lineno);

 for (child = menu->list; child != ((void*)0); child = child->next)
  if (child->prompt != ((void*)0))
   menu_build_message_list(child);
}
