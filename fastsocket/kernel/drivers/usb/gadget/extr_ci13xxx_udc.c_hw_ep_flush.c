
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int CAP_ENDPTFLUSH ;
 int CAP_ENDPTSTAT ;
 int cpu_relax () ;
 scalar_t__ hw_cread (int ,int ) ;
 int hw_cwrite (int ,int ,int ) ;
 int hw_ep_bit (int,int) ;

__attribute__((used)) static int hw_ep_flush(int num, int dir)
{
 int n = hw_ep_bit(num, dir);

 do {

  hw_cwrite(CAP_ENDPTFLUSH, BIT(n), BIT(n));
  while (hw_cread(CAP_ENDPTFLUSH, BIT(n)))
   cpu_relax();
 } while (hw_cread(CAP_ENDPTSTAT, BIT(n)));

 return 0;
}
