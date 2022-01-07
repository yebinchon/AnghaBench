
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct tty_struct*) ;} ;


 int stub1 (struct tty_struct*) ;
 TYPE_1__ v253_ops ;

__attribute__((used)) static int cx81801_open(struct tty_struct *tty)
{
 return v253_ops.open(tty);
}
