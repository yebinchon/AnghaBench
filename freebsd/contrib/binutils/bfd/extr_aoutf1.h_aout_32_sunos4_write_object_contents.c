
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_exec {int dummy; } ;
struct external_exec {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int exec_hdr_flags; } ;


 int DYNAMIC ;
 int M_386 ;
 int M_68010 ;
 int M_68020 ;
 int M_SPARC ;
 int M_SPARCLET ;
 int M_SPARCLITE_LE ;
 int M_UNKNOWN ;
 int N_SET_DYNAMIC (struct internal_exec,long) ;
 int N_SET_FLAGS (struct internal_exec,int ) ;
 int N_SET_MACHTYPE (struct internal_exec,int ) ;
 int TRUE ;
 int WRITE_HEADERS (int *,struct internal_exec*) ;
 TYPE_1__* aout_backend_info (int *) ;



 int bfd_get_arch (int *) ;
 int bfd_get_file_flags (int *) ;
 int bfd_get_mach (int *) ;





 int choose_reloc_size (int *) ;
 struct internal_exec* exec_hdr (int *) ;

__attribute__((used)) static bfd_boolean
sunos_write_object_contents (bfd *abfd)
{
  struct external_exec exec_bytes;
  struct internal_exec *execp = exec_hdr (abfd);


  switch (bfd_get_arch (abfd))
    {
    case 134:
      switch (bfd_get_mach (abfd))
 {
 case 132:
   N_SET_MACHTYPE (*execp, M_UNKNOWN);
   break;
 case 131:
   N_SET_MACHTYPE (*execp, M_68010);
   break;
 default:
 case 130:
   N_SET_MACHTYPE (*execp, M_68020);
   break;
 }
      break;
    case 133:
      switch (bfd_get_mach (abfd))
 {
 case 129:
   N_SET_MACHTYPE (*execp, M_SPARCLET);
   break;
 case 128:
   N_SET_MACHTYPE (*execp, M_SPARCLITE_LE);
   break;
 default:
   N_SET_MACHTYPE (*execp, M_SPARC);
   break;
 }
      break;
    case 135:
      N_SET_MACHTYPE (*execp, M_386);
      break;
    default:
      N_SET_MACHTYPE (*execp, M_UNKNOWN);
    }

  choose_reloc_size (abfd);

  N_SET_FLAGS (*execp, aout_backend_info (abfd)->exec_hdr_flags);

  N_SET_DYNAMIC (*execp, (long)(bfd_get_file_flags (abfd) & DYNAMIC));

  WRITE_HEADERS (abfd, execp);

  return TRUE;
}
