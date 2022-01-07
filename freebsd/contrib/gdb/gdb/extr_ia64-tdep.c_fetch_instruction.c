
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int instruction_type ;
typedef int CORE_ADDR ;


 int BUNDLE_LEN ;
 int L ;
 int SLOT_MULTIPLIER ;
 long long extract_bit_field (char*,int ,int) ;
 long long slotN_contents (char*,int) ;
 int target_read_memory (int,char*,int) ;
 int ** template_encoding_table ;
 int warning (char*) ;

__attribute__((used)) static CORE_ADDR
fetch_instruction (CORE_ADDR addr, instruction_type *it, long long *instr)
{
  char bundle[BUNDLE_LEN];
  int slotnum = (int) (addr & 0x0f) / SLOT_MULTIPLIER;
  long long template;
  int val;
  if (slotnum > 2)
    {
      warning ("Can't fetch instructions for slot numbers greater than 2.\n"
        "Using slot 0 instead");
      slotnum = 0;
    }

  addr &= ~0x0f;

  val = target_read_memory (addr, bundle, BUNDLE_LEN);

  if (val != 0)
    return 0;

  *instr = slotN_contents (bundle, slotnum);
  template = extract_bit_field (bundle, 0, 5);
  *it = template_encoding_table[(int)template][slotnum];

  if (slotnum == 2 || (slotnum == 1 && *it == L))
    addr += 16;
  else
    addr += (slotnum + 1) * SLOT_MULTIPLIER;

  return addr;
}
