
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rc_res_resource ;
typedef int rc_res_id ;
struct TYPE_5__ {int * res; TYPE_3__* dir; } ;
struct TYPE_6__ {int subdir; TYPE_1__ u; int id; struct TYPE_6__* next; } ;
typedef TYPE_2__ rc_res_entry ;
struct TYPE_7__ {unsigned long time; TYPE_2__* entries; scalar_t__ minor; scalar_t__ major; scalar_t__ characteristics; } ;
typedef TYPE_3__ rc_res_directory ;


 int assert (int) ;
 int fprintf (int ,char*,...) ;
 char* program_name ;
 scalar_t__ res_alloc (int) ;
 scalar_t__ res_id_cmp (int ,int const) ;
 int res_ids_print (int ,int,int const*) ;
 int stderr ;
 unsigned long time (int *) ;
 int xexit (int) ;

__attribute__((used)) static void
res_append_resource (rc_res_directory **resources, rc_res_resource *resource,
       int cids, const rc_res_id *ids, int dupok)
{
  rc_res_entry *re = ((void*)0);
  int i;

  assert (cids > 0);
  for (i = 0; i < cids; i++)
    {
      rc_res_entry **pp;

      if (*resources == ((void*)0))
 {
   static unsigned long timeval;



   if (timeval == 0)
     timeval = time (((void*)0));

   *resources = ((rc_res_directory *)
   res_alloc (sizeof (rc_res_directory)));
   (*resources)->characteristics = 0;
   (*resources)->time = timeval;
   (*resources)->major = 0;
   (*resources)->minor = 0;
   (*resources)->entries = ((void*)0);
 }

      for (pp = &(*resources)->entries; *pp != ((void*)0); pp = &(*pp)->next)
 if (res_id_cmp ((*pp)->id, ids[i]) == 0)
   break;

      if (*pp != ((void*)0))
 re = *pp;
      else
 {
   re = (rc_res_entry *) res_alloc (sizeof (rc_res_entry));
   re->next = ((void*)0);
   re->id = ids[i];
   if ((i + 1) < cids)
     {
       re->subdir = 1;
       re->u.dir = ((void*)0);
     }
   else
     {
       re->subdir = 0;
       re->u.res = ((void*)0);
     }

   *pp = re;
 }

      if ((i + 1) < cids)
 {
   if (! re->subdir)
     {
       fprintf (stderr, "%s: ", program_name);
       res_ids_print (stderr, i, ids);
       fprintf (stderr, ": expected to be a directory\n");
       xexit (1);
     }

   resources = &re->u.dir;
 }
    }

  if (re->subdir)
    {
      fprintf (stderr, "%s: ", program_name);
      res_ids_print (stderr, cids, ids);
      fprintf (stderr, ": expected to be a leaf\n");
      xexit (1);
    }

  if (re->u.res != ((void*)0))
    {
      if (dupok)
 return;

      fprintf (stderr, "%s: warning: ", program_name);
      res_ids_print (stderr, cids, ids);
      fprintf (stderr, ": duplicate value\n");
    }

  re->u.res = resource;
}
