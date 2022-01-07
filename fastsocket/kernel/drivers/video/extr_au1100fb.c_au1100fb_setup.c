
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int panel_idx; char* opt_mode; } ;
struct TYPE_4__ {char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__ drv_info ;
 scalar_t__ isdigit (char) ;
 TYPE_1__* known_lcd_panels ;
 char* kstrdup (char*,int ) ;
 int nocursor ;
 int print_err (char*) ;
 int print_info (char*,...) ;
 int print_warn (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 char* strsep (char**,char*) ;

int au1100fb_setup(char *options)
{
 char* this_opt;
 int num_panels = ARRAY_SIZE(known_lcd_panels);
 char* mode = ((void*)0);
 int panel_idx = 0;

 if (num_panels <= 0) {
  print_err("No LCD panels supported by driver!");
  return -EFAULT;
   }

 if (options) {
  while ((this_opt = strsep(&options,",")) != ((void*)0)) {

   if (!strncmp(this_opt, "panel:", 6)) {
    int i;
    this_opt += 6;
    for (i = 0; i < num_panels; i++) {
     if (!strncmp(this_opt,
                 known_lcd_panels[i].name,
       strlen(this_opt))) {
      panel_idx = i;
      break;
     }
    }
    if (i >= num_panels) {
      print_warn("Panel %s not supported!", this_opt);
    }
   }
   if (!strncmp(this_opt, "nocursor", 8)) {
    this_opt += 8;
    nocursor = 1;
    print_info("Cursor disabled");
   }

   else if (isdigit(this_opt[0])) {
    mode = kstrdup(this_opt, GFP_KERNEL);
    if (!mode) {
     print_err("memory allocation failed");
     return -ENOMEM;
    }
   }

   else {
    print_warn("Unsupported option \"%s\"", this_opt);
   }
  }
 }

 drv_info.panel_idx = panel_idx;
 drv_info.opt_mode = mode;

 print_info("Panel=%s Mode=%s",
   known_lcd_panels[drv_info.panel_idx].name,
         drv_info.opt_mode ? drv_info.opt_mode : "default");

 return 0;
}
