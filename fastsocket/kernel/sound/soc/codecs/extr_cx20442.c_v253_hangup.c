
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int v253_close (struct tty_struct*) ;

__attribute__((used)) static int v253_hangup(struct tty_struct *tty)
{
 v253_close(tty);
 return 0;
}
