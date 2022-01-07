
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct smd_tty_info* driver_data; } ;
struct smd_tty_info {int ch; } ;


 int smd_write (int ,unsigned char const*,int) ;
 int smd_write_avail (int ) ;

__attribute__((used)) static int smd_tty_write(struct tty_struct *tty, const unsigned char *buf, int len)
{
 struct smd_tty_info *info = tty->driver_data;
 int avail;





 avail = smd_write_avail(info->ch);
 if (len > avail)
  len = avail;

 return smd_write(info->ch, buf, len);
}
