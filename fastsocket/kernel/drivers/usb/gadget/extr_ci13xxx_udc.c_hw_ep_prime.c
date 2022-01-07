
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int CAP_ENDPTPRIME ;
 int CAP_ENDPTSETUPSTAT ;
 int EAGAIN ;
 int EBUSY ;
 int RX ;
 int cpu_relax () ;
 scalar_t__ hw_cread (int ,int ) ;
 int hw_cwrite (int ,int ,int ) ;
 int hw_ep_bit (int,int) ;
 scalar_t__ hw_ep_is_primed (int,int) ;

__attribute__((used)) static int hw_ep_prime(int num, int dir, int is_ctrl)
{
 int n = hw_ep_bit(num, dir);


 if (hw_ep_is_primed(num, dir))
  return -EBUSY;

 if (is_ctrl && dir == RX && hw_cread(CAP_ENDPTSETUPSTAT, BIT(num)))
  return -EAGAIN;

 hw_cwrite(CAP_ENDPTPRIME, BIT(n), BIT(n));

 while (hw_cread(CAP_ENDPTPRIME, BIT(n)))
  cpu_relax();
 if (is_ctrl && dir == RX && hw_cread(CAP_ENDPTSETUPSTAT, BIT(num)))
  return -EAGAIN;


 return 0;
}
