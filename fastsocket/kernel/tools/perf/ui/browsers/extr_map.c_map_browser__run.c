
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct map_browser {int b; TYPE_2__* map; } ;
struct TYPE_4__ {TYPE_1__* dso; } ;
struct TYPE_3__ {int long_name; } ;


 int map_browser__search (struct map_browser*) ;
 int ui_browser__hide (int *) ;
 int ui_browser__run (int *,int ) ;
 scalar_t__ ui_browser__show (int *,int ,char*,char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int map_browser__run(struct map_browser *self)
{
 int key;

 if (ui_browser__show(&self->b, self->map->dso->long_name,
        "Press <- or ESC to exit, %s / to search",
        verbose ? "" : "restart with -v to use") < 0)
  return -1;

 while (1) {
  key = ui_browser__run(&self->b, 0);

  if (verbose && key == '/')
   map_browser__search(self);
  else
   break;
 }

 ui_browser__hide(&self->b);
 return key;
}
