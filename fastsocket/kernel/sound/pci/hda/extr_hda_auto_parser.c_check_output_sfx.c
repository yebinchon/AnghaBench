
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hda_nid_t ;


 int ARRAY_SIZE (char const* const*) ;
 int find_idx_in_nid_list (int ,int const*,int) ;

__attribute__((used)) static const char *check_output_sfx(hda_nid_t nid, const hda_nid_t *pins,
        int num_pins, int *indexp)
{
 static const char * const channel_sfx[] = {
  " Front", " Surround", " CLFE", " Side"
 };
 int i;

 i = find_idx_in_nid_list(nid, pins, num_pins);
 if (i < 0)
  return ((void*)0);
 if (num_pins == 1)
  return "";
 if (num_pins > ARRAY_SIZE(channel_sfx)) {
  if (indexp)
   *indexp = i;
  return "";
 }
 return channel_sfx[i];
}
