
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int RTM_BASE ;
 int RTM_NR_MSGTYPES ;

__attribute__((used)) static inline int rtm_msgindex(int msgtype)
{
 int msgindex = msgtype - RTM_BASE;






 BUG_ON(msgindex < 0 || msgindex >= RTM_NR_MSGTYPES);

 return msgindex;
}
