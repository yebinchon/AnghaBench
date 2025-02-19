
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;


 int WM8350_SYSTEM_CONTROL_2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdt_mutex ;
 int wm8350_reg_read (struct wm8350*,int ) ;
 int wm8350_reg_write (struct wm8350*,int ,int ) ;

__attribute__((used)) static int wm8350_wdt_kick(struct wm8350 *wm8350)
{
 int ret;
 u16 reg;

 mutex_lock(&wdt_mutex);

 reg = wm8350_reg_read(wm8350, WM8350_SYSTEM_CONTROL_2);
 ret = wm8350_reg_write(wm8350, WM8350_SYSTEM_CONTROL_2, reg);

 mutex_unlock(&wdt_mutex);

 return ret;
}
