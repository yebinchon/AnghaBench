
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hda_nid_t ;



__attribute__((used)) static void reorder_outputs(unsigned int nums, hda_nid_t *pins)
{
 hda_nid_t nid;

 switch (nums) {
 case 3:
 case 4:
  nid = pins[1];
  pins[1] = pins[2];
  pins[2] = nid;
  break;
 }
}
