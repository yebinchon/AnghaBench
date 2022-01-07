
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct internal_exec {int dummy; } ;
typedef int bfd_boolean ;
struct TYPE_9__ {scalar_t__ xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_10__ {TYPE_1__* hdr; } ;
struct TYPE_8__ {scalar_t__ c_len; int c_aouthdr; } ;


 int FALSE ;
 scalar_t__ SOLARIS_BCP_CORE_LEN ;
 int TRUE ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;
 TYPE_6__* core_hdr (TYPE_2__*) ;
 scalar_t__ exec_hdr (TYPE_2__*) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static bfd_boolean
sunos4_core_file_matches_executable_p (bfd *core_bfd, bfd *exec_bfd)
{
  if (core_bfd->xvec != exec_bfd->xvec)
    {
      bfd_set_error (bfd_error_system_call);
      return FALSE;
    }


  if ((core_hdr (core_bfd)->hdr)->c_len == SOLARIS_BCP_CORE_LEN)
    return TRUE;

  return memcmp ((char *) &((core_hdr (core_bfd)->hdr)->c_aouthdr),
   (char *) exec_hdr (exec_bfd),
   sizeof (struct internal_exec)) == 0;
}
