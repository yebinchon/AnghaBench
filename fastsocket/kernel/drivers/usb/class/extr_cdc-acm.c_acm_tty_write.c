
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm_wb {int len; int buf; } ;
struct acm {int writesize; int write_lock; struct acm_wb* wb; } ;


 int ACM_READY (struct acm*) ;
 int EINVAL ;
 int acm_wb_alloc (struct acm*) ;
 int acm_write_start (struct acm*,int) ;
 int dbg (char*,int) ;
 int memcpy (int ,unsigned char const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int acm_tty_write(struct tty_struct *tty,
     const unsigned char *buf, int count)
{
 struct acm *acm = tty->driver_data;
 int stat;
 unsigned long flags;
 int wbn;
 struct acm_wb *wb;

 dbg("Entering acm_tty_write to write %d bytes,", count);

 if (!ACM_READY(acm))
  return -EINVAL;
 if (!count)
  return 0;

 spin_lock_irqsave(&acm->write_lock, flags);
 wbn = acm_wb_alloc(acm);
 if (wbn < 0) {
  spin_unlock_irqrestore(&acm->write_lock, flags);
  return 0;
 }
 wb = &acm->wb[wbn];

 count = (count > acm->writesize) ? acm->writesize : count;
 dbg("Get %d bytes...", count);
 memcpy(wb->buf, buf, count);
 wb->len = count;
 spin_unlock_irqrestore(&acm->write_lock, flags);

 stat = acm_write_start(acm, wbn);
 if (stat < 0)
  return stat;
 return count;
}
