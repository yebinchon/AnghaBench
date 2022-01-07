
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_security_struct {int nlbl_state; } ;


 int NLBL_UNSET ;

void selinux_netlbl_sk_security_reset(struct sk_security_struct *ssec)
{
 ssec->nlbl_state = NLBL_UNSET;
}
