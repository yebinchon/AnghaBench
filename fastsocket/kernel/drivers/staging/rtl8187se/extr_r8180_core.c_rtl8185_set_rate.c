
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 int BRSR ;
 int BRSR_MBR_8185 ;
 int MAX_RESP_RATE_SHIFT ;
 int MIN_RESP_RATE_SHIFT ;
 int RESP_RATE ;
 int ieeerate2rtlrate (int) ;
 int read_nic_word (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int) ;

void rtl8185_set_rate(struct net_device *dev)
{
 int i;
 u16 word;
 int basic_rate,min_rr_rate,max_rr_rate;

 basic_rate = ieeerate2rtlrate(240);
 min_rr_rate = ieeerate2rtlrate(60);
 max_rr_rate = ieeerate2rtlrate(240);

 write_nic_byte(dev, RESP_RATE,
   max_rr_rate<<MAX_RESP_RATE_SHIFT| min_rr_rate<<MIN_RESP_RATE_SHIFT);

 word = read_nic_word(dev, BRSR);
 word &= ~BRSR_MBR_8185;

 for(i=0;i<=basic_rate;i++)
  word |= (1<<i);

 write_nic_word(dev, BRSR, word);
}
