
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hda_nid_t ;


 scalar_t__ find_idx_in_nid_list (int ,int const*,int) ;

__attribute__((used)) static bool found_in_nid_list(hda_nid_t nid, const hda_nid_t *list, int nums)
{
 return find_idx_in_nid_list(nid, list, nums) >= 0;
}
