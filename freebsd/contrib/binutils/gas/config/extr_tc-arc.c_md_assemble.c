
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct arc_operand_value {size_t type; long value; int name; } ;
struct arc_operand {int flags; size_t fmt; long (* insert ) (long,struct arc_operand const*,int,struct arc_operand_value const*,long,char const**) ;long shift; int bits; } ;
typedef struct arc_opcode {long value; char* syntax; int flags; } const arc_opcode ;
struct TYPE_9__ {scalar_t__ X_op; long X_add_number; } ;
struct arc_fixup {size_t opindex; TYPE_1__ exp; } ;
typedef TYPE_1__ expressionS ;
typedef int bfd_reloc_code_real_type ;
typedef long arc_insn ;
struct TYPE_10__ {char* fr_literal; } ;


 int ARC_DELAY_NONE ;
 int ARC_MOD_BITS ;
 int ARC_MOD_DOT ;
 scalar_t__ ARC_MOD_P (int) ;
 int ARC_OPCODE_COND_BRANCH ;
 struct arc_opcode const* ARC_OPCODE_NEXT_ASM (struct arc_opcode const*) ;
 int ARC_OPERAND_ABSOLUTE_BRANCH ;
 int ARC_OPERAND_ADDRESS ;
 int ARC_OPERAND_ERROR ;
 int ARC_OPERAND_FAKE ;
 int ARC_OPERAND_LIMM ;
 int ARC_OPERAND_RELATIVE_BRANCH ;
 int ARC_OPERAND_SUFFIX ;
 int ARC_OPERAND_WARN ;
 int BFD_RELOC_32 ;
 int BFD_RELOC_ARC_B26 ;
 scalar_t__ BFD_RELOC_UNUSED ;
 scalar_t__ ISALNUM (char) ;
 scalar_t__ ISSPACE (char) ;
 scalar_t__ IS_REG_DEST_OPERAND (char) ;
 scalar_t__ IS_REG_SHIMM_OFFSET (char) ;
 scalar_t__ IS_SYMBOL_OPERAND (char) ;
 int MAX_FIXUPS ;
 int MAX_SUFFIXES ;
 scalar_t__ O_absent ;
 scalar_t__ O_constant ;
 scalar_t__ O_illegal ;
 scalar_t__ O_register ;
 int abort () ;
 int arc_code_symbol (TYPE_1__*) ;
 struct arc_opcode const* arc_ext_opcodes ;
 scalar_t__ arc_insn_not_jl (long) ;
 scalar_t__ arc_limm_fixup_adjust (long) ;
 scalar_t__ arc_mach_type ;
 int arc_opcode_init_insert () ;
 long arc_opcode_limm_p (long*) ;
 struct arc_opcode const* arc_opcode_lookup_asm (char*) ;
 int arc_opcode_supported (struct arc_opcode const*) ;
 size_t* arc_operand_map ;
 struct arc_operand* arc_operands ;
 int arc_suffix_hash ;
 struct arc_operand_value* arc_suffixes ;
 int arc_suffixes_count ;
 int as_bad (char const*,...) ;
 int as_fatal (char*,...) ;
 int as_warn (char const*) ;
 scalar_t__ bfd_mach_arc_5 ;
 int dwarf2_emit_insn (int) ;
 int expression (TYPE_1__*) ;
 int fix_new_exp (TYPE_4__*,int,int,TYPE_1__*,int,int ) ;
 char* frag_more (int) ;
 TYPE_4__* frag_now ;
 int get_arc_exp_reloc_type (int,int,TYPE_1__*,TYPE_1__*) ;
 struct arc_operand_value* get_ext_suffix (char*) ;
 struct arc_operand_value* hash_find (int ,char*) ;
 int init_opcode_tables (scalar_t__) ;
 char* input_line_pointer ;
 scalar_t__* is_end_of_line ;
 int md_number_to_chars (char*,long,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int strncmp (char*,char*,int) ;
 long stub1 (long,struct arc_operand const*,int,struct arc_operand_value const*,long,char const**) ;
 long stub2 (long,struct arc_operand const*,int,struct arc_operand_value const*,long,char const**) ;
 long stub3 (long,struct arc_operand const*,int,struct arc_operand_value const*,long,char const**) ;
 long stub4 (long,struct arc_operand const*,int,struct arc_operand_value const*,long,char const**) ;
 long stub5 (long,struct arc_operand const*,int,struct arc_operand_value const*,long,char const**) ;

void
md_assemble (char *str)
{
  const struct arc_opcode *opcode;
  const struct arc_opcode *std_opcode;
  struct arc_opcode *ext_opcode;
  char *start;
  const char *last_errmsg = 0;
  arc_insn insn;
  static int init_tables_p = 0;



  if (!init_tables_p)
    {
      init_opcode_tables (arc_mach_type);
      init_tables_p = 1;
    }


  while (ISSPACE (*str))
    str++;




  ext_opcode = arc_ext_opcodes;
  std_opcode = arc_opcode_lookup_asm (str);


  start = str;
  for (opcode = (ext_opcode ? ext_opcode : std_opcode);
       opcode != ((void*)0);
       opcode = (ARC_OPCODE_NEXT_ASM (opcode)
   ? ARC_OPCODE_NEXT_ASM (opcode)
   : (ext_opcode ? ext_opcode = ((void*)0), std_opcode : ((void*)0))))
    {
      int past_opcode_p, fc, num_suffixes;
      int fix_up_at = 0;
      char *syn;
      struct arc_fixup fixups[MAX_FIXUPS];


      int limm_reloc_p;
      int ext_suffix_p;
      const struct arc_operand_value *insn_suffixes[MAX_SUFFIXES];


      if (! arc_opcode_supported (opcode))
 continue;


      arc_opcode_init_insert ();
      insn = opcode->value;
      fc = 0;
      past_opcode_p = 0;
      num_suffixes = 0;
      limm_reloc_p = 0;
      ext_suffix_p = 0;



      for (str = start, syn = opcode->syntax; *syn != '\0';)
 {
   int mods;
   const struct arc_operand *operand;


   if (*syn != '%' || *++syn == '%')
     {
      if (*str == *syn)
  {
    if (*syn == ' ')
      past_opcode_p = 1;
    ++syn;
    ++str;
  }
       else
  break;
       continue;
     }


   mods = 0;
   while (ARC_MOD_P (arc_operands[arc_operand_map[(int) *syn]].flags))
     {
       mods |= arc_operands[arc_operand_map[(int) *syn]].flags & ARC_MOD_BITS;
       ++syn;
     }
   operand = arc_operands + arc_operand_map[(int) *syn];
   if (operand->fmt == 0)
     as_fatal ("unknown syntax format character `%c'", *syn);

   if (operand->flags & ARC_OPERAND_FAKE)
     {
       const char *errmsg = ((void*)0);
       if (operand->insert)
  {
    insn = (*operand->insert) (insn, operand, mods, ((void*)0), 0, &errmsg);
    if (errmsg != (const char *) ((void*)0))
      {
        last_errmsg = errmsg;
        if (operand->flags & ARC_OPERAND_ERROR)
   {
     as_bad (errmsg);
     return;
   }
        else if (operand->flags & ARC_OPERAND_WARN)
   as_warn (errmsg);
        break;
      }
    if (limm_reloc_p
        && (operand->flags && operand->flags & ARC_OPERAND_LIMM)
        && (operand->flags &
     (ARC_OPERAND_ABSOLUTE_BRANCH | ARC_OPERAND_ADDRESS)))
      {
        fixups[fix_up_at].opindex = arc_operand_map[operand->fmt];
      }
  }
       ++syn;
     }

   else if (!past_opcode_p)
     {
       int found;
       char c;
       char *s, *t;
       const struct arc_operand_value *suf, *suffix_end;
       const struct arc_operand_value *suffix = ((void*)0);

       if (!(operand->flags & ARC_OPERAND_SUFFIX))
  abort ();




       if (*str == ' ')
  {
    ++syn;
    continue;
  }

       s = str;
       if (mods & ARC_MOD_DOT)
  {
    if (*s != '.')
      break;
    ++s;
  }
       else
  {


    if (*s == '.')
      {
        ++syn;
        continue;
      }
  }


       for (t = s; *t && ISALNUM (*t); ++t)
  continue;
       c = *t;
       *t = '\0';
       if ((suf = get_ext_suffix (s)))
  ext_suffix_p = 1;
       else
  suf = hash_find (arc_suffix_hash, s);
       if (!suf)
  {



    *t = c;
    break;
  }






       found = 0;
       if (ext_suffix_p && arc_operands[suf->type].fmt == *syn)
  {

    *t = c;
    if (operand->insert)
      insn = (*operand->insert) (insn, operand,
            mods, ((void*)0), suf->value,
            ((void*)0));
    else
      insn |= suf->value << operand->shift;
    suffix = suf;
    str = t;
    found = 1;
  }
       else
  {
    *t = c;
    suffix_end = arc_suffixes + arc_suffixes_count;
    for (suffix = suf;
         suffix < suffix_end && strcmp (suffix->name, suf->name) == 0;
         ++suffix)
      {
        if (arc_operands[suffix->type].fmt == *syn)
   {

     if (operand->insert)
       insn = (*operand->insert) (insn, operand,
             mods, ((void*)0), suffix->value,
             ((void*)0));
     else
       insn |= suffix->value << operand->shift;

     str = t;
     found = 1;
     break;
   }
      }
  }
       ++syn;
       if (!found)

  ;
       else
  {
    if (num_suffixes == MAX_SUFFIXES)
      as_bad ("too many suffixes");
    else
      insn_suffixes[num_suffixes++] = suffix;
  }
     }
   else

     {
       char *hold;
       const struct arc_operand_value *reg = ((void*)0);
       long value = 0;
       expressionS exp;

       if (operand->flags & ARC_OPERAND_SUFFIX)
  abort ();




       if (is_end_of_line[(unsigned char) *str])
  break;


       hold = input_line_pointer;
       input_line_pointer = str;
       expression (&exp);
       str = input_line_pointer;
       input_line_pointer = hold;

       if (exp.X_op == O_illegal)
  as_bad ("illegal operand");
       else if (exp.X_op == O_absent)
  as_bad ("missing operand");
       else if (exp.X_op == O_constant)
  value = exp.X_add_number;
       else if (exp.X_op == O_register)
  reg = (struct arc_operand_value *) exp.X_add_number;

       else if (((*syn) == 'a'))
  as_bad ("symbol as destination register");
       else
  {
    if (!strncmp (str, "@h30", 4))
      {
        arc_code_symbol (&exp);
        str += 4;
      }

    if (fc >= MAX_FIXUPS)
      as_fatal ("too many fixups");
    fixups[fc].exp = exp;



    if (((*syn) == 'd'))
      break;






    if (IS_SYMBOL_OPERAND (*syn))
      {
        const char *junk;
        limm_reloc_p = 1;

        fix_up_at = fc;




        (*arc_operands[arc_operand_map['Q']].insert)
   (insn, operand, mods, reg, 0L, &junk);
      }
    else
      fixups[fc].opindex = arc_operand_map[(int) *syn];
    ++fc;
    value = 0;
  }


       if (operand->insert)
  {
    const char *errmsg = ((void*)0);
    insn = (*operand->insert) (insn, operand, mods,
          reg, (long) value, &errmsg);
    if (errmsg != (const char *) ((void*)0))
      {
        last_errmsg = errmsg;
        if (operand->flags & ARC_OPERAND_ERROR)
   {
     as_bad (errmsg);
     return;
   }
        else if (operand->flags & ARC_OPERAND_WARN)
   as_warn (errmsg);
        break;
      }
  }
       else
  insn |= (value & ((1 << operand->bits) - 1)) << operand->shift;

       ++syn;
     }
 }



      if (*syn == '\0')
 {
   int i;
   char *f;
   long limm, limm_p;






   while (ISSPACE (*str))
     ++str;

   if (!is_end_of_line[(unsigned char) *str])
     as_bad ("junk at end of line: `%s'", str);


   limm_p = arc_opcode_limm_p (&limm);



   {
     static int in_delay_slot_p = 0;
     static int prev_insn_needs_cc_nop_p = 0;

     int delay_slot_type = ARC_DELAY_NONE;

     int conditional = 0;

     int cc_set_p = 0;

     int cond_branch_p = opcode->flags & ARC_OPCODE_COND_BRANCH;

     for (i = 0; i < num_suffixes; ++i)
       {
  switch (arc_operands[insn_suffixes[i]->type].fmt)
    {
    case 'n':
      delay_slot_type = insn_suffixes[i]->value;
      break;
    case 'q':
      conditional = insn_suffixes[i]->value;
      break;
    case 'f':
      cc_set_p = 1;
      break;
    }
       }




     if (in_delay_slot_p && limm_p)
       as_warn ("8 byte instruction in delay slot");
     if (delay_slot_type != ARC_DELAY_NONE
  && limm_p && arc_insn_not_jl (insn))
       as_warn ("8 byte jump instruction with delay slot");
     in_delay_slot_p = (delay_slot_type != ARC_DELAY_NONE) && !limm_p;




     if (cond_branch_p && conditional != 0
  && prev_insn_needs_cc_nop_p && arc_mach_type == bfd_mach_arc_5)
       as_warn ("conditional branch follows set of flags");
     prev_insn_needs_cc_nop_p =


       cc_set_p && !limm_p;
   }





   if (limm_p)
     {
       f = frag_more (8);
       md_number_to_chars (f, insn, 4);
       md_number_to_chars (f + 4, limm, 4);
       dwarf2_emit_insn (8);
     }
   else if (limm_reloc_p)

     abort ();
   else
     {
       f = frag_more (4);
       md_number_to_chars (f, insn, 4);
       dwarf2_emit_insn (4);
     }


   for (i = 0; i < fc; ++i)
     {
       int op_type, reloc_type;
       expressionS exptmp;
       const struct arc_operand *operand;
       if (arc_operands[fixups[i].opindex].flags & ARC_OPERAND_LIMM)
  {

    fixups[i].exp.X_add_number += arc_limm_fixup_adjust (insn);
    op_type = fixups[i].opindex;

    if (op_type == arc_operand_map['L']
        || op_type == arc_operand_map['s']
        || op_type == arc_operand_map['o']
        || op_type == arc_operand_map['O'])
      reloc_type = BFD_RELOC_32;
    else if (op_type == arc_operand_map['J'])
      reloc_type = BFD_RELOC_ARC_B26;
    else
      abort ();
    reloc_type = get_arc_exp_reloc_type (1, reloc_type,
             &fixups[i].exp,
             &exptmp);
  }
       else
  {
    op_type = get_arc_exp_reloc_type (0, fixups[i].opindex,
          &fixups[i].exp, &exptmp);
    reloc_type = op_type + (int) BFD_RELOC_UNUSED;
  }
       operand = &arc_operands[op_type];
       fix_new_exp (frag_now,
      ((f - frag_now->fr_literal)
       + (operand->flags & ARC_OPERAND_LIMM ? 4 : 0)), 4,
      &exptmp,
      (operand->flags & ARC_OPERAND_RELATIVE_BRANCH) != 0,
      (bfd_reloc_code_real_type) reloc_type);
     }
   return;
 }
    }

  if (((void*)0) == last_errmsg)
    as_bad ("bad instruction `%s'", start);
  else
    as_bad (last_errmsg);
}
