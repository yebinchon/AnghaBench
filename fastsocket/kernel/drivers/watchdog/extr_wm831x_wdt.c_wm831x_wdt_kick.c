
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x {int dev; } ;


 int EINVAL ;
 int WM831X_WATCHDOG ;
 int WM831X_WDOG_RESET ;
 int WM831X_WDOG_RST_SRC ;
 int dev_err (int ,char*,...) ;
 int gpio_set_value_cansleep (scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ update_gpio ;
 int update_state ;
 int wdt_mutex ;
 int wm831x_reg_lock (struct wm831x*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;
 int wm831x_reg_unlock (struct wm831x*) ;
 int wm831x_reg_write (struct wm831x*,int ,int) ;

__attribute__((used)) static int wm831x_wdt_kick(struct wm831x *wm831x)
{
 int ret;
 u16 reg;

 mutex_lock(&wdt_mutex);

 if (update_gpio) {
  gpio_set_value_cansleep(update_gpio, update_state);
  update_state = !update_state;
  ret = 0;
  goto out;
 }


 reg = wm831x_reg_read(wm831x, WM831X_WATCHDOG);

 if (!(reg & WM831X_WDOG_RST_SRC)) {
  dev_err(wm831x->dev, "Hardware watchdog update unsupported\n");
  ret = -EINVAL;
  goto out;
 }

 reg |= WM831X_WDOG_RESET;

 ret = wm831x_reg_unlock(wm831x);
 if (ret == 0) {
  ret = wm831x_reg_write(wm831x, WM831X_WATCHDOG, reg);
  wm831x_reg_lock(wm831x);
 } else {
  dev_err(wm831x->dev, "Failed to unlock security key: %d\n",
   ret);
 }

out:
 mutex_unlock(&wdt_mutex);

 return ret;
}
