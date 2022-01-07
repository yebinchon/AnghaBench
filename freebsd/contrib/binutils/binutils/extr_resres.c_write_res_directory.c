
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int rc_uint_type ;
struct TYPE_11__ {unsigned long id; } ;
struct TYPE_13__ {TYPE_1__ u; int named; } ;
typedef TYPE_3__ const rc_res_id ;
struct TYPE_12__ {int res; TYPE_5__* dir; } ;
struct TYPE_14__ {TYPE_2__ u; scalar_t__ subdir; TYPE_3__ const id; struct TYPE_14__* next; } ;
typedef TYPE_4__ rc_res_entry ;
struct TYPE_15__ {TYPE_4__* entries; } ;
typedef TYPE_5__ rc_res_directory ;


 int fprintf (int ,char*,int) ;
 int stderr ;
 int write_res_resource (int *,int,TYPE_3__ const*,TYPE_3__ const*,int ,int*) ;

__attribute__((used)) static rc_uint_type
write_res_directory (windres_bfd *wrbfd, rc_uint_type off, const rc_res_directory *rd,
       const rc_res_id *type, const rc_res_id *name, rc_uint_type *language,
       int level)
{
  const rc_res_entry *re;

  for (re = rd->entries; re != ((void*)0); re = re->next)
    {
      switch (level)
 {
 case 1:




   type = &re->id;
   break;

 case 2:


   name = &re->id;
   break;

 case 3:


   if (! re->id.named
       && re->id.u.id != (unsigned long) *language
       && (re->id.u.id & 0xffff) == re->id.u.id)
     {
       *language = re->id.u.id;
     }
   break;

 default:
   break;
 }

      if (re->subdir)
 off = write_res_directory (wrbfd, off, re->u.dir, type, name, language,
       level + 1);
      else
 {
   if (level == 3)
     {





       off = write_res_resource (wrbfd, off, type, name, re->u.res,
           language);
     }
   else
     {
       fprintf (stderr, "// Resource at unexpected level %d\n", level);
       off = write_res_resource (wrbfd, off, type, (rc_res_id *) ((void*)0),
           re->u.res, language);
     }
 }
    }

  return off;
}
