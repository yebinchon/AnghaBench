
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_link_info {scalar_t__ shared; } ;
typedef int bfd ;
struct TYPE_2__ {int has_tlsgd; } ;


 int ABI_64_P (int *) ;
 int R_SPARC_REV32 ;






 int R_SPARC_TLS_LE_HIX22 ;
 int R_SPARC_TLS_LE_LOX10 ;
 TYPE_1__* _bfd_sparc_elf_tdata (int *) ;

__attribute__((used)) static int
sparc_elf_tls_transition (struct bfd_link_info *info, bfd *abfd,
     int r_type, int is_local)
{
  if (! ABI_64_P (abfd)
      && r_type == 133
      && ! _bfd_sparc_elf_tdata (abfd)->has_tlsgd)
    r_type = R_SPARC_REV32;

  if (info->shared)
    return r_type;

  switch (r_type)
    {
    case 133:
      if (is_local)
 return R_SPARC_TLS_LE_HIX22;
      return 131;
    case 132:
      if (is_local)
 return R_SPARC_TLS_LE_LOX10;
      return 130;
    case 131:
      if (is_local)
 return R_SPARC_TLS_LE_HIX22;
      return r_type;
    case 130:
      if (is_local)
 return R_SPARC_TLS_LE_LOX10;
      return r_type;
    case 129:
      return R_SPARC_TLS_LE_HIX22;
    case 128:
      return R_SPARC_TLS_LE_LOX10;
    }

  return r_type;
}
