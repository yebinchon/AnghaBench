
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long add_time; scalar_t__ use_time; } ;
struct TYPE_5__ {long hard_add_expires_seconds; long hard_use_expires_seconds; long soft_add_expires_seconds; long soft_use_expires_seconds; } ;
struct TYPE_4__ {int dead; } ;
struct xfrm_policy {int lock; int timer; TYPE_3__ curlft; TYPE_2__ lft; int index; TYPE_1__ walk; } ;


 long LONG_MAX ;
 long XFRM_KM_TIMEOUT ;
 unsigned long get_seconds () ;
 scalar_t__ jiffies ;
 int km_policy_expired (struct xfrm_policy*,int,int,int ) ;
 scalar_t__ make_jiffies (long) ;
 int mod_timer (int *,scalar_t__) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int xfrm_pol_hold (struct xfrm_policy*) ;
 int xfrm_pol_put (struct xfrm_policy*) ;
 int xfrm_policy_delete (struct xfrm_policy*,int) ;
 int xfrm_policy_id2dir (int ) ;

__attribute__((used)) static void xfrm_policy_timer(unsigned long data)
{
 struct xfrm_policy *xp = (struct xfrm_policy*)data;
 unsigned long now = get_seconds();
 long next = LONG_MAX;
 int warn = 0;
 int dir;

 read_lock(&xp->lock);

 if (unlikely(xp->walk.dead))
  goto out;

 dir = xfrm_policy_id2dir(xp->index);

 if (xp->lft.hard_add_expires_seconds) {
  long tmo = xp->lft.hard_add_expires_seconds +
   xp->curlft.add_time - now;
  if (tmo <= 0)
   goto expired;
  if (tmo < next)
   next = tmo;
 }
 if (xp->lft.hard_use_expires_seconds) {
  long tmo = xp->lft.hard_use_expires_seconds +
   (xp->curlft.use_time ? : xp->curlft.add_time) - now;
  if (tmo <= 0)
   goto expired;
  if (tmo < next)
   next = tmo;
 }
 if (xp->lft.soft_add_expires_seconds) {
  long tmo = xp->lft.soft_add_expires_seconds +
   xp->curlft.add_time - now;
  if (tmo <= 0) {
   warn = 1;
   tmo = XFRM_KM_TIMEOUT;
  }
  if (tmo < next)
   next = tmo;
 }
 if (xp->lft.soft_use_expires_seconds) {
  long tmo = xp->lft.soft_use_expires_seconds +
   (xp->curlft.use_time ? : xp->curlft.add_time) - now;
  if (tmo <= 0) {
   warn = 1;
   tmo = XFRM_KM_TIMEOUT;
  }
  if (tmo < next)
   next = tmo;
 }

 if (warn)
  km_policy_expired(xp, dir, 0, 0);
 if (next != LONG_MAX &&
     !mod_timer(&xp->timer, jiffies + make_jiffies(next)))
  xfrm_pol_hold(xp);

out:
 read_unlock(&xp->lock);
 xfrm_pol_put(xp);
 return;

expired:
 read_unlock(&xp->lock);
 if (!xfrm_policy_delete(xp, dir))
  km_policy_expired(xp, dir, 1, 0);
 xfrm_pol_put(xp);
}
