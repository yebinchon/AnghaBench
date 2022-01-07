
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int fx_r_type; scalar_t__ fx_addsy; scalar_t__ fx_offset; int fx_line; int fx_file; scalar_t__ fx_pcrel; scalar_t__ fx_where; TYPE_1__* fx_frag; } ;
typedef TYPE_2__ fixS ;
typedef scalar_t__ bfd_reloc_code_real_type ;
typedef int asymbol ;
struct TYPE_13__ {scalar_t__ use_rela_p; } ;
typedef TYPE_3__ asection ;
struct TYPE_14__ {scalar_t__ address; int * howto; scalar_t__ addend; TYPE_8__** sym_ptr_ptr; } ;
typedef TYPE_4__ arelent ;
struct TYPE_15__ {int value; } ;
struct TYPE_11__ {scalar_t__ fr_address; } ;



 scalar_t__ BFD_RELOC_16_PCREL ;

 scalar_t__ BFD_RELOC_32_PCREL ;


 scalar_t__ BFD_RELOC_8_PCREL ;
 scalar_t__ BFD_RELOC_ARM_GOTPC ;
 scalar_t__ BFD_RELOC_ARM_MOVT_PCREL ;

 scalar_t__ BFD_RELOC_ARM_MOVW_PCREL ;
 scalar_t__ BFD_RELOC_ARM_THUMB_MOVT_PCREL ;

 scalar_t__ BFD_RELOC_ARM_THUMB_MOVW_PCREL ;
 scalar_t__ GOT_symbol ;
 char* S_GET_NAME (int *) ;
 int S_IS_COMMON (int *) ;
 int S_IS_DEFINED (int *) ;
 int S_IS_LOCAL (int *) ;
 char* _ (char*) ;
 int as_bad_where (int ,int ,char*,...) ;
 char* bfd_get_reloc_code_name (scalar_t__) ;
 int * bfd_reloc_type_lookup (int ,scalar_t__) ;
 scalar_t__ md_pcrel_from_section (TYPE_2__*,TYPE_3__*) ;
 int stdoutput ;
 TYPE_8__* symbol_get_bfdsym (int *) ;
 void* xmalloc (int) ;

arelent *
tc_gen_reloc (asection *section, fixS *fixp)
{
  arelent * reloc;
  bfd_reloc_code_real_type code;

  reloc = xmalloc (sizeof (arelent));

  reloc->sym_ptr_ptr = xmalloc (sizeof (asymbol *));
  *reloc->sym_ptr_ptr = symbol_get_bfdsym (fixp->fx_addsy);
  reloc->address = fixp->fx_frag->fr_address + fixp->fx_where;

  if (fixp->fx_pcrel)
    {
      if (section->use_rela_p)
 fixp->fx_offset -= md_pcrel_from_section (fixp, section);
      else
 fixp->fx_offset = reloc->address;
    }
  reloc->addend = fixp->fx_offset;

  switch (fixp->fx_r_type)
    {
    case 204:
      if (fixp->fx_pcrel)
 {
   code = BFD_RELOC_8_PCREL;
   break;
 }

    case 207:
      if (fixp->fx_pcrel)
 {
   code = BFD_RELOC_16_PCREL;
   break;
 }

    case 206:
      if (fixp->fx_pcrel)
 {
   code = BFD_RELOC_32_PCREL;
   break;
 }

    case 167:
      if (fixp->fx_pcrel)
 {
   code = BFD_RELOC_ARM_MOVW_PCREL;
   break;
 }

    case 168:
      if (fixp->fx_pcrel)
 {
   code = BFD_RELOC_ARM_MOVT_PCREL;
   break;
 }

    case 146:
      if (fixp->fx_pcrel)
 {
   code = BFD_RELOC_ARM_THUMB_MOVW_PCREL;
   break;
 }

    case 147:
      if (fixp->fx_pcrel)
 {
   code = BFD_RELOC_ARM_THUMB_MOVT_PCREL;
   break;
 }

    case 138:
    case 162:
    case 163:
    case 137:
    case 131:
    case 130:
    case 135:
    case 134:
    case 133:
    case 132:
    case 136:
    case 129:
    case 128:



      code = fixp->fx_r_type;
      break;

    case 169:
    case 189:


      as_bad_where (fixp->fx_file, fixp->fx_line,
      _("literal referenced across section boundary"));
      return ((void*)0);
    case 188:
      as_bad_where (fixp->fx_file, fixp->fx_line,
      _("internal relocation (type: IMMEDIATE) not fixed up"));
      return ((void*)0);

    case 203:
      as_bad_where (fixp->fx_file, fixp->fx_line,
      _("ADRL used for a symbol not defined in the same file"));
      return ((void*)0);

    case 165:
      if (section->use_rela_p)
 {
   code = fixp->fx_r_type;
   break;
 }

      if (fixp->fx_addsy != ((void*)0)
   && !S_IS_DEFINED (fixp->fx_addsy)
   && S_IS_LOCAL (fixp->fx_addsy))
 {
   as_bad_where (fixp->fx_file, fixp->fx_line,
   _("undefined local label `%s'"),
   S_GET_NAME (fixp->fx_addsy));
   return ((void*)0);
 }

      as_bad_where (fixp->fx_file, fixp->fx_line,
      _("internal_relocation (type: OFFSET_IMM) not fixed up"));
      return ((void*)0);

    default:
      {
 char * type;

 switch (fixp->fx_r_type)
   {
   case 138: type = "NONE"; break;
   case 164: type = "OFFSET_IMM8"; break;
   case 155: type = "SHIFT_IMM"; break;
   case 154: type = "SMC"; break;
   case 153: type = "SWI"; break;
   case 166: type = "MULTI"; break;
   case 192: type = "CP_OFF_IMM"; break;
   case 152: type = "T32_CP_OFF_IMM"; break;
   case 149: type = "THUMB_ADD"; break;
   case 144: type = "THUMB_SHIFT"; break;
   case 148: type = "THUMB_IMM"; break;
   case 145: type = "THUMB_OFFSET"; break;
   default: type = _("<unknown>"); break;
   }
 as_bad_where (fixp->fx_file, fixp->fx_line,
        _("cannot represent %s relocation in this object file format"),
        type);
 return ((void*)0);
      }
    }
  reloc->howto = bfd_reloc_type_lookup (stdoutput, code);

  if (reloc->howto == ((void*)0))
    {
      as_bad_where (fixp->fx_file, fixp->fx_line,
      _("cannot represent %s relocation in this object file format"),
      bfd_get_reloc_code_name (code));
      return ((void*)0);
    }



  if (fixp->fx_r_type == 129)
    reloc->address = fixp->fx_offset;

  return reloc;
}
