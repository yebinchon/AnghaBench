
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_wss {int mutex; int state; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,int ) ;
 int wlp_wss_strstate (int ) ;

__attribute__((used)) static ssize_t wlp_wss_state_show(struct wlp_wss *wss, char *buf)
{
 int result = 0;

 if (mutex_lock_interruptible(&wss->mutex))
  goto out;
 result = scnprintf(buf, PAGE_SIZE, "%s\n",
      wlp_wss_strstate(wss->state));
 mutex_unlock(&wss->mutex);
out:
 return result;
}
