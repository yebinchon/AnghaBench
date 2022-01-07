
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int pe_flags; } ;
struct TYPE_10__ {int ps_flags; TYPE_3__* ps_pe; } ;
struct TYPE_9__ {int sb_flags; } ;
typedef TYPE_1__ PE_SecBuf ;
typedef TYPE_2__ PE_Scn ;
typedef int PE_Buffer ;
typedef TYPE_3__ PE ;


 int EACCES ;
 int EINVAL ;
 int LIBPE_F_FD_DONE ;
 int LIBPE_F_LOAD_SECTION ;
 int PE_F_DIRTY ;
 int errno ;
 TYPE_1__* libpe_alloc_buffer (TYPE_2__*,int ) ;
 scalar_t__ libpe_load_section (TYPE_3__*,TYPE_2__*) ;

PE_Buffer *
pe_newbuffer(PE_Scn *ps)
{
 PE *pe;
 PE_SecBuf *sb;

 if (ps == ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }

 pe = ps->ps_pe;

 if (pe->pe_flags & LIBPE_F_FD_DONE) {
  errno = EACCES;
  return (((void*)0));
 }

 if ((ps->ps_flags & LIBPE_F_LOAD_SECTION) == 0) {
  if (libpe_load_section(pe, ps) < 0)
   return (((void*)0));
 }

 if ((sb = libpe_alloc_buffer(ps, 0)) == ((void*)0))
  return (((void*)0));

 sb->sb_flags |= PE_F_DIRTY;
 ps->ps_flags |= PE_F_DIRTY;

 return ((PE_Buffer *) sb);
}
