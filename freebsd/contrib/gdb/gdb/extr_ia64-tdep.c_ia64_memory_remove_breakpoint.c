
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int BUNDLE_LEN ;
 scalar_t__ L ;
 int SLOT_MULTIPLIER ;
 int extract_bit_field (char*,int ,int) ;
 int memcpy (long long*,char*,int) ;
 int replace_slotN_contents (char*,long long,int) ;
 int target_read_memory (int,char*,int) ;
 int target_write_memory (int,char*,int) ;
 scalar_t__** template_encoding_table ;

__attribute__((used)) static int
ia64_memory_remove_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  char bundle[BUNDLE_LEN];
  int slotnum = (addr & 0x0f) / SLOT_MULTIPLIER;
  long long instr;
  int val;
  int template;

  addr &= ~0x0f;

  val = target_read_memory (addr, bundle, BUNDLE_LEN);



  template = extract_bit_field (bundle, 0, 5);
  if (slotnum == 1 && template_encoding_table[template][1] == L)
    {
      slotnum = 2;
    }

  memcpy (&instr, contents_cache, sizeof instr);
  replace_slotN_contents (bundle, instr, slotnum);
  if (val == 0)
    target_write_memory (addr, bundle, BUNDLE_LEN);

  return val;
}
