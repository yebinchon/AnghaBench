
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum neon_type_mask { ____Placeholder_neon_type_mask } neon_type_mask ;
typedef enum neon_el_type { ____Placeholder_neon_el_type } neon_el_type ;
 int N_16 ;
 int N_32 ;
 int N_64 ;
 int N_8 ;
 int N_F32 ;
 int N_F64 ;
 int N_I16 ;
 int N_I32 ;
 int N_I64 ;
 int N_I8 ;
 int N_P16 ;
 int N_P8 ;
 int N_S16 ;
 int N_S32 ;
 int N_S64 ;
 int N_S8 ;
 int N_U16 ;
 int N_U32 ;
 int N_U64 ;
 int N_U8 ;
 int N_UTYP ;

__attribute__((used)) static enum neon_type_mask
type_chk_of_el_type (enum neon_el_type type, unsigned size)
{
  switch (type)
    {
    case 128:
      switch (size)
        {
        case 8: return N_8;
        case 16: return N_16;
        case 32: return N_32;
        case 64: return N_64;
        default: ;
        }
      break;

    case 132:
      switch (size)
        {
        case 8: return N_I8;
        case 16: return N_I16;
        case 32: return N_I32;
        case 64: return N_I64;
        default: ;
        }
      break;

    case 133:
      switch (size)
        {
        case 32: return N_F32;
        case 64: return N_F64;
        default: ;
        }
      break;

    case 131:
      switch (size)
        {
        case 8: return N_P8;
        case 16: return N_P16;
        default: ;
        }
      break;

    case 130:
      switch (size)
        {
        case 8: return N_S8;
        case 16: return N_S16;
        case 32: return N_S32;
        case 64: return N_S64;
        default: ;
        }
      break;

    case 129:
      switch (size)
        {
        case 8: return N_U8;
        case 16: return N_U16;
        case 32: return N_U32;
        case 64: return N_U64;
        default: ;
        }
      break;

    default: ;
    }

  return N_UTYP;
}
