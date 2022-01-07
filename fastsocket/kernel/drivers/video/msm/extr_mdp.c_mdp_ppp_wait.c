
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp_info {int dummy; } ;


 int DL0_ROI_DONE ;
 int mdp_ppp_waitqueue ;
 int mdp_wait (struct mdp_info*,int ,int *) ;

__attribute__((used)) static int mdp_ppp_wait(struct mdp_info *mdp)
{
 return mdp_wait(mdp, DL0_ROI_DONE, &mdp_ppp_waitqueue);
}
