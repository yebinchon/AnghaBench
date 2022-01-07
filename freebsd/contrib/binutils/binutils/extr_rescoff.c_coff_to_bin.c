
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int unichar ;
struct extern_res_entry {int rva; int name; } ;
struct extern_res_directory {int * id_count; int * name_count; int * minor; int * major; int time; int characteristics; } ;
struct TYPE_13__ {int length; } ;
struct TYPE_17__ {int length; } ;
struct coff_write_info {int dirsize; int dirstrsize; TYPE_4__ dataents; int wrbfd; TYPE_9__ dirs; TYPE_9__ dirstrs; } ;
typedef int rc_uint_type ;
struct TYPE_14__ {int res; TYPE_7__* dir; } ;
struct TYPE_10__ {int length; int* name; } ;
struct TYPE_11__ {int id; TYPE_1__ n; } ;
struct TYPE_12__ {TYPE_2__ u; scalar_t__ named; } ;
struct TYPE_15__ {TYPE_5__ u; scalar_t__ subdir; TYPE_3__ id; struct TYPE_15__* next; } ;
typedef TYPE_6__ rc_res_entry ;
struct TYPE_16__ {int characteristics; int time; int major; int minor; TYPE_6__* entries; } ;
typedef TYPE_7__ rc_res_directory ;
typedef int bfd_byte ;


 int * coff_alloc (TYPE_9__*,int) ;
 int coff_res_to_bin (int ,struct coff_write_info*) ;
 int windres_put_16 (int ,int *,int) ;
 int windres_put_32 (int ,int ,int) ;

__attribute__((used)) static void
coff_to_bin (const rc_res_directory *resdir, struct coff_write_info *cwi)
{
  struct extern_res_directory *erd;
  int ci, cn;
  const rc_res_entry *e;
  struct extern_res_entry *ere;



  erd = ((struct extern_res_directory *)
  coff_alloc (&cwi->dirs, sizeof (*erd)));

  windres_put_32 (cwi->wrbfd, erd->characteristics, resdir->characteristics);
  windres_put_32 (cwi->wrbfd, erd->time, resdir->time);
  windres_put_16 (cwi->wrbfd, erd->major, resdir->major);
  windres_put_16 (cwi->wrbfd, erd->minor, resdir->minor);

  ci = 0;
  cn = 0;
  for (e = resdir->entries; e != ((void*)0); e = e->next)
    {
      if (e->id.named)
 ++cn;
      else
 ++ci;
    }

  windres_put_16 (cwi->wrbfd, erd->name_count, cn);
  windres_put_16 (cwi->wrbfd, erd->id_count, ci);





  ere = ((struct extern_res_entry *)
  coff_alloc (&cwi->dirs, (ci + cn) * sizeof (*ere)));
  for (e = resdir->entries; e != ((void*)0); e = e->next, ere++)
    {
      if (! e->id.named)
 windres_put_32 (cwi->wrbfd, ere->name, e->id.u.id);
      else
 {
   bfd_byte *str;
   rc_uint_type i;




   windres_put_32 (cwi->wrbfd, ere->name,
       0x80000000 | (cwi->dirsize + cwi->dirstrs.length));

   str = coff_alloc (&cwi->dirstrs, e->id.u.n.length * 2 + 2);
   windres_put_16 (cwi->wrbfd, str, e->id.u.n.length);
   for (i = 0; i < e->id.u.n.length; i++)
     windres_put_16 (cwi->wrbfd, str + (i + 1) * sizeof (unichar), e->id.u.n.name[i]);
 }

      if (e->subdir)
 {
   windres_put_32 (cwi->wrbfd, ere->rva, 0x80000000 | cwi->dirs.length);
   coff_to_bin (e->u.dir, cwi);
 }
      else
 {
   windres_put_32 (cwi->wrbfd, ere->rva,
       cwi->dirsize + cwi->dirstrsize + cwi->dataents.length);

   coff_res_to_bin (e->u.res, cwi);
 }
    }
}
