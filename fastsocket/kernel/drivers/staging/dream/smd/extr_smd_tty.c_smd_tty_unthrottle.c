
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct smd_tty_info* driver_data; } ;
struct smd_tty_info {int ch; } ;


 int smd_kick (int ) ;

__attribute__((used)) static void smd_tty_unthrottle(struct tty_struct *tty)
{
 struct smd_tty_info *info = tty->driver_data;
 smd_kick(info->ch);
}
