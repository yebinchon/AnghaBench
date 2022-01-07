
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_script_browser {int b; int script_name; } ;


 int ui_browser__hide (int *) ;
 int ui_browser__run (int *,int ) ;
 scalar_t__ ui_browser__show (int *,int ,char*) ;

__attribute__((used)) static int script_browser__run(struct perf_script_browser *self)
{
 int key;

 if (ui_browser__show(&self->b, self->script_name,
        "Press <- or ESC to exit") < 0)
  return -1;

 while (1) {
  key = ui_browser__run(&self->b, 0);


  break;
 }

 ui_browser__hide(&self->b);
 return key;
}
