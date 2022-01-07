
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const option; int (* function ) () ;} ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* menu ;
 int stub1 () ;

__attribute__((used)) static int select_menu_item(const char arg)
{
 unsigned int i;

 for (i = ARRAY_SIZE(menu) - 1; i != 0; i--) {
  if (arg == menu[i].option)
   break;
 }

 return menu[i].function();
}
