
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ia64_insn ;
typedef enum ia64_insn_type { ____Placeholder_ia64_insn_type } ia64_insn_type ;
struct TYPE_2__ {int insn_index; short priority; scalar_t__ next_flag; } ;


 int abort () ;
 int extract_op (int,int*,unsigned int*) ;
 TYPE_1__* ia64_dis_names ;
 scalar_t__ opcode_verify (int,int,int) ;

__attribute__((used)) static int
locate_opcode_ent (ia64_insn opcode, enum ia64_insn_type type)
{
  int currtest[41];
  int bitpos[41];
  int op_ptr[41];
  int currstatenum = 0;
  short found_disent = -1;
  short found_priority = -1;

  currtest[currstatenum] = 0;
  op_ptr[currstatenum] = 0;
  bitpos[currstatenum] = 40;

  while (1)
    {
      int op_pointer = op_ptr[currstatenum];
      unsigned int op;
      int currbitnum = bitpos[currstatenum];
      int oplen;
      int opval[3] = {0};
      int next_op;
      int currbit;

      oplen = extract_op (op_pointer, opval, &op);

      bitpos[currstatenum] = currbitnum;


      if (op & 0x40)
 {
   currbitnum -= opval[0];
 }


      currbit = opcode & (((ia64_insn) 1) << currbitnum) ? 1 : 0;
      next_op = -1;




      switch (currtest[currstatenum])
 {
 case 0:
   currtest[currstatenum]++;
   if (currbit == 0 && (op & 0x80))
     {
       if ((op & 0xf8) == 0x80)
  {
    int count = op & 0x7;
    int x;

    for (x = 0; x <= count; x++)
      {
        int i =
   opcode & (((ia64_insn) 1) << (currbitnum - x)) ? 1 : 0;
        if (i)
   {
     break;
   }
      }
    if (x > count)
      {
        next_op = op_pointer + ((oplen + 7) / 8);
        currbitnum -= count;
        break;
      }
  }
       else if (! currbit)
  {
    next_op = op_pointer + ((oplen + 7) / 8);
    break;
  }
     }

 case 1:


   currtest[currstatenum]++;
   if (currbit && (op & 0x30) != 0 && ((op & 0x30) != 0x30))
     {
       next_op = opval[1];
       break;
     }

 case 2:





   currtest[currstatenum]++;
   if ((op & 0x08) || ((op & 0x30) == 0x30))
     {
       next_op = opval[2];
       break;
     }
 }






      if ((next_op >= 0) && (next_op & 32768))
 {
   short disent = next_op & 32767;
          short priority = -1;

   if (next_op > 65535)
     {
       abort ();
     }



   while (disent >= 0)
     {
       int place = ia64_dis_names[disent].insn_index;

              priority = ia64_dis_names[disent].priority;

       if (opcode_verify (opcode, place, type)
                  && priority > found_priority)
  {
    break;
  }
       if (ia64_dis_names[disent].next_flag)
  {
    disent++;
  }
       else
  {
    disent = -1;
  }
     }

   if (disent >= 0)
     {
              found_disent = disent;
              found_priority = priority;
     }


          next_op = -2;
 }





      if (next_op == -1)
 {
   currstatenum--;
   if (currstatenum < 0)
     {
              return found_disent;
     }
 }
      else if (next_op >= 0)
 {
   currstatenum++;
   bitpos[currstatenum] = currbitnum - 1;
   op_ptr[currstatenum] = next_op;
   currtest[currstatenum] = 0;
 }
    }
}
