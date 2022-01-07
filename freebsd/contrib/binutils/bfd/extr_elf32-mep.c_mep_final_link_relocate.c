
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int type; scalar_t__ pc_relative; } ;
typedef TYPE_2__ reloc_howto_type ;
typedef int bfd_vma ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_10__ {int output_offset; TYPE_1__* output_section; } ;
typedef TYPE_3__ asection ;
struct TYPE_11__ {int r_offset; int r_addend; } ;
struct TYPE_8__ {int vma; } ;
typedef TYPE_4__ Elf_Internal_Rela ;
 int abort () ;
 scalar_t__ bfd_big_endian (int *) ;
 int bfd_reloc_ok ;
 int bfd_reloc_overflow ;
 long mep_sdaoff_base (int) ;
 unsigned long mep_tpoff_base (int) ;

__attribute__((used)) static bfd_reloc_status_type
mep_final_link_relocate
    (reloc_howto_type * howto,
     bfd * input_bfd,
     asection * input_section,
     bfd_byte * contents,
     Elf_Internal_Rela * rel,
     bfd_vma relocation)
{
  unsigned long u;
  long s;
  unsigned char *byte;
  bfd_vma pc;
  bfd_reloc_status_type r = bfd_reloc_ok;
  int e2, e4;

  if (bfd_big_endian (input_bfd))
    {
      e2 = 0;
      e4 = 0;
    }
  else
    {
      e2 = 1;
      e4 = 3;
    }

  pc = (input_section->output_section->vma
 + input_section->output_offset
 + rel->r_offset);

  s = relocation + rel->r_addend;

  byte = (unsigned char *)contents + rel->r_offset;

  if (howto->type == 134
      && s == 0
      && pc >= 0x800000)
    {



      return bfd_reloc_ok;
    }

  if (howto->pc_relative)
    s -= pc;

  u = (unsigned long) s;

  switch (howto->type)
    {


    case 145:
      if (u > 255) r = bfd_reloc_overflow;
      byte[0] = (u & 0xff);
      break;
    case 147:
      if (u > 65535) r = bfd_reloc_overflow;
      byte[0^e2] = ((u >> 8) & 0xff);
      byte[1^e2] = (u & 0xff);
      break;
    case 146:
      byte[0^e4] = ((u >> 24) & 0xff);
      byte[1^e4] = ((u >> 16) & 0xff);
      byte[2^e4] = ((u >> 8) & 0xff);
      byte[3^e4] = (u & 0xff);
      break;
    case 133:
      if (-128 > s || s > 127) r = bfd_reloc_overflow;
      byte[1^e2] = (byte[1^e2] & 0x01) | (s & 0xfe);
      break;
    case 136:
      if (-2048 > s || s > 2047) r = bfd_reloc_overflow;
      byte[0^e2] = (byte[0^e2] & 0xf0) | ((s >> 8) & 0x0f);
      byte[1^e2] = (byte[1^e2] & 0x01) | (s & 0xfe);
      break;
    case 135:
      if (-65536 > s || s > 65535) r = bfd_reloc_overflow;
      byte[2^e2] = ((s >> 9) & 0xff);
      byte[3^e2] = ((s >> 1) & 0xff);
      break;
    case 134:
      if (-8388608 > s || s > 8388607) r = bfd_reloc_overflow;
      byte[0^e2] = (byte[0^e2] & 0xf8) | ((s >> 5) & 0x07);
      byte[1^e2] = (byte[1^e2] & 0x0f) | ((s << 3) & 0xf0);
      byte[2^e2] = ((s >> 16) & 0xff);
      byte[3^e2] = ((s >> 8) & 0xff);
      break;
    case 137:
      if (u > 16777215) r = bfd_reloc_overflow;
      byte[0^e2] = (byte[0^e2] & 0xf8) | ((u >> 5) & 0x07);
      byte[1^e2] = (byte[1^e2] & 0x0f) | ((u << 3) & 0xf0);
      byte[2^e2] = ((u >> 16) & 0xff);
      byte[3^e2] = ((u >> 8) & 0xff);
      break;
    case 138:
      byte[2^e2] = ((u >> 8) & 0xff);
      byte[3^e2] = (u & 0xff);
      break;
    case 139:
      byte[2^e2] = ((u >> 24) & 0xff);
      byte[3^e2] = ((u >> 16) & 0xff);
      break;
    case 140:
      byte[2^e2] = ((s >> 24) & 0xff);
      byte[3^e2] = ((s >> 16) & 0xff);
      break;
    case 141:
      s -= mep_sdaoff_base(rel->r_offset);
      if (-32768 > s || s > 32767) r = bfd_reloc_overflow;
      byte[2^e2] = ((s >> 8) & 0xff);
      byte[3^e2] = (s & 0xff);
      break;
    case 132:
      s -= mep_tpoff_base(rel->r_offset);
      if (-32768 > s || s > 32767) r = bfd_reloc_overflow;
      byte[2^e2] = ((s >> 8) & 0xff);
      byte[3^e2] = (s & 0xff);
      break;
    case 131:
      u -= mep_tpoff_base(rel->r_offset);
      if (u > 127) r = bfd_reloc_overflow;
      byte[1^e2] = (byte[1^e2] & 0x80) | (u & 0x7f);
      break;
    case 130:
      u -= mep_tpoff_base(rel->r_offset);
      if (u > 127) r = bfd_reloc_overflow;
      byte[1^e2] = (byte[1^e2] & 0x81) | (u & 0x7e);
      break;
    case 129:
      u -= mep_tpoff_base(rel->r_offset);
      if (u > 127) r = bfd_reloc_overflow;
      byte[1^e2] = (byte[1^e2] & 0x83) | (u & 0x7c);
      break;
    case 128:
      if (u > 16777215) r = bfd_reloc_overflow;
      byte[1^e2] = (u & 0xff);
      byte[2^e2] = ((u >> 16) & 0xff);
      byte[3^e2] = ((u >> 8) & 0xff);
      break;
    case 144:
      if (u > 16777215) r = bfd_reloc_overflow;
      byte[1^e2] = (byte[1^e2] & 0x03) | (u & 0xfc);
      byte[2^e2] = ((u >> 16) & 0xff);
      byte[3^e2] = ((u >> 8) & 0xff);
      break;
    case 142:
      break;
    case 143:
      break;

    default:
      abort ();
    }

  return r;
}
