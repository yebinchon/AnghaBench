
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 unsigned long SYS_DOWN ;
 unsigned long SYS_HALT ;
 int __raw_writeb (int ,int ) ;
 int kern_dog ;
 int user_dog ;

__attribute__((used)) static int sbwdog_notify_sys(struct notifier_block *this, unsigned long code,
        void *erf)
{
 if (code == SYS_DOWN || code == SYS_HALT) {



  __raw_writeb(0, user_dog);
  __raw_writeb(0, kern_dog);
 }

 return NOTIFY_DONE;
}
