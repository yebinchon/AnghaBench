
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct whc {int * pz_list; } ;


 int whc_qset_set_link_ptr (int *,int ) ;

__attribute__((used)) static void update_pzl_pointers(struct whc *whc, int period, u64 addr)
{
 switch (period) {
 case 0:
  whc_qset_set_link_ptr(&whc->pz_list[0], addr);
  whc_qset_set_link_ptr(&whc->pz_list[2], addr);
  whc_qset_set_link_ptr(&whc->pz_list[4], addr);
  whc_qset_set_link_ptr(&whc->pz_list[6], addr);
  whc_qset_set_link_ptr(&whc->pz_list[8], addr);
  whc_qset_set_link_ptr(&whc->pz_list[10], addr);
  whc_qset_set_link_ptr(&whc->pz_list[12], addr);
  whc_qset_set_link_ptr(&whc->pz_list[14], addr);
  break;
 case 1:
  whc_qset_set_link_ptr(&whc->pz_list[1], addr);
  whc_qset_set_link_ptr(&whc->pz_list[5], addr);
  whc_qset_set_link_ptr(&whc->pz_list[9], addr);
  whc_qset_set_link_ptr(&whc->pz_list[13], addr);
  break;
 case 2:
  whc_qset_set_link_ptr(&whc->pz_list[3], addr);
  whc_qset_set_link_ptr(&whc->pz_list[11], addr);
  break;
 case 3:
  whc_qset_set_link_ptr(&whc->pz_list[7], addr);
  break;
 case 4:
  whc_qset_set_link_ptr(&whc->pz_list[15], addr);
  break;
 }
}
