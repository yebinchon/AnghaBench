
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pe_flags; } ;
struct TYPE_7__ {int ps_flags; int ps_b; TYPE_2__* ps_pe; } ;
typedef int PE_SecBuf ;
typedef TYPE_1__ PE_Scn ;
typedef int PE_Buffer ;
typedef TYPE_2__ PE ;


 int EACCES ;
 int EINVAL ;
 int LIBPE_F_FD_DONE ;
 int LIBPE_F_LOAD_SECTION ;
 int LIBPE_F_SPECIAL_FILE ;
 int * STAILQ_FIRST (int *) ;
 int * STAILQ_NEXT (int *,int ) ;
 int errno ;
 scalar_t__ libpe_load_all_sections (TYPE_2__*) ;
 scalar_t__ libpe_load_section (TYPE_2__*,TYPE_1__*) ;
 int sb_next ;

PE_Buffer *
pe_getbuffer(PE_Scn *ps, PE_Buffer *pb)
{
 PE *pe;
 PE_SecBuf *sb;

 if (ps == ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }

 pe = ps->ps_pe;

 if ((ps->ps_flags & LIBPE_F_LOAD_SECTION) == 0) {
  if (pe->pe_flags & LIBPE_F_FD_DONE) {
   errno = EACCES;
   return (((void*)0));
  }
  if (pe->pe_flags & LIBPE_F_SPECIAL_FILE) {
   if (libpe_load_all_sections(pe) < 0)
    return (((void*)0));
  } else {
   if (libpe_load_section(pe, ps) < 0)
    return (((void*)0));
  }
 }

 sb = (PE_SecBuf *) pb;

 if (sb == ((void*)0))
  sb = STAILQ_FIRST(&ps->ps_b);
 else
  sb = STAILQ_NEXT(sb, sb_next);

 return ((PE_Buffer *) sb);
}
