
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {int writesize; } ;


 int ACM_NW ;
 int ACM_READY (struct acm*) ;
 int acm_wb_is_avail (struct acm*) ;

__attribute__((used)) static int acm_tty_chars_in_buffer(struct tty_struct *tty)
{
 struct acm *acm = tty->driver_data;
 if (!ACM_READY(acm))
  return 0;



 return (ACM_NW - acm_wb_is_avail(acm)) * acm->writesize;
}
