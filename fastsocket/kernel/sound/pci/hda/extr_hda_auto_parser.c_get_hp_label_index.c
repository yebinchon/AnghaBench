
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int const hda_nid_t ;


 char const* check_output_pfx (struct hda_codec*,int const) ;
 int find_idx_in_nid_list (int const,int const*,int) ;

__attribute__((used)) static int get_hp_label_index(struct hda_codec *codec, hda_nid_t nid,
         const hda_nid_t *pins, int num_pins)
{
 int i, j, idx = 0;

 const char *pfx = check_output_pfx(codec, nid);

 i = find_idx_in_nid_list(nid, pins, num_pins);
 if (i < 0)
  return -1;
 for (j = 0; j < i; j++)
  if (pfx == check_output_pfx(codec, pins[j]))
   idx++;

 return idx;
}
