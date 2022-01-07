
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8350 {int dummy; } ;
struct TYPE_2__ {int parent; } ;


 struct wm8350* dev_get_drvdata (int ) ;
 TYPE_1__ wm8350_wdt_miscdev ;

__attribute__((used)) static struct wm8350 *get_wm8350(void)
{
 return dev_get_drvdata(wm8350_wdt_miscdev.parent);
}
