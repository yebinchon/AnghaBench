
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int match_bits; int match; } ;


 unsigned long BIN (int ,int ) ;
 int NUMOPCODES ;
 unsigned long build_mask () ;
 TYPE_1__* cr16_instruction ;
 TYPE_1__* instruction ;
 int* words ;

__attribute__((used)) static int
match_opcode (void)
{
  unsigned long mask;

  unsigned long doubleWord = words[1] + (words[0] << 16);


  instruction = &cr16_instruction[NUMOPCODES - 2];


  while (instruction >= cr16_instruction)
    {
      mask = build_mask ();
      if ((doubleWord & mask) == BIN (instruction->match,
                                      instruction->match_bits))
        return 1;
      else
        instruction--;
    }
  return 0;
}
