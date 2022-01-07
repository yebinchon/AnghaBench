
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAP_ENDPTPRIME ;
 int CAP_ENDPTSTAT ;
 int hw_cread (int ,int ) ;
 int hw_ep_bit (int,int) ;
 int test_bit (int ,void*) ;

__attribute__((used)) static int hw_ep_is_primed(int num, int dir)
{
 u32 reg = hw_cread(CAP_ENDPTPRIME, ~0) | hw_cread(CAP_ENDPTSTAT, ~0);

 return test_bit(hw_ep_bit(num, dir), (void *)&reg);
}
