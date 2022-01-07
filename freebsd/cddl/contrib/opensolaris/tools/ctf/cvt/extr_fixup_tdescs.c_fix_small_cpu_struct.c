
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ t_type; scalar_t__ t_id; void* t_name; TYPE_3__* t_members; struct TYPE_9__* t_tdesc; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_10__ {int td_nextid; } ;
typedef TYPE_2__ tdata_t ;
struct TYPE_11__ {struct TYPE_11__* ml_next; TYPE_1__* ml_type; void* ml_name; scalar_t__ ml_size; scalar_t__ ml_offset; } ;
typedef TYPE_3__ mlist_t ;


 scalar_t__ FORWARD ;
 size_t NBBY ;
 scalar_t__ STRUCT ;
 scalar_t__ TYPEDEF ;
 int debug (int,char*,char*) ;
 int * getenv (char*) ;
 TYPE_1__* lookup_tdesc (TYPE_2__*,char*) ;
 scalar_t__ strcmp (void*,char*) ;
 int streq (void*,char*) ;
 int terminate (char*,void*) ;
 TYPE_1__* xcalloc (int) ;
 TYPE_3__* xmalloc (int) ;
 void* xstrdup (char*) ;

__attribute__((used)) static void
fix_small_cpu_struct(tdata_t *td, size_t ptrsize)
{
 tdesc_t *cput, *cpu;
 tdesc_t *machcpu;
 mlist_t *ml, *lml;
 mlist_t *cpum;
 int foundcpucyc = 0;







 if ((cput = lookup_tdesc(td, "cpu_t")) != ((void*)0)) {
  if (cput->t_type != TYPEDEF)
   return;
  cpu = cput->t_tdesc;
 } else {
  cpu = lookup_tdesc(td, "cpu");
 }

 if (cpu == ((void*)0))
  return;

 if (!streq(cpu->t_name, "cpu") || cpu->t_type != STRUCT)
  return;

 for (ml = cpu->t_members, lml = ((void*)0); ml;
     lml = ml, ml = ml->ml_next) {
  if (strcmp(ml->ml_name, "cpu_cyclic") == 0)
   foundcpucyc = 1;
 }

 if (foundcpucyc == 0 || lml == ((void*)0) ||
     strcmp(lml->ml_name, "cpu_m") == 0)
  return;
 if (!streq(lml->ml_name, "cpu_m_pad") &&
     getenv("CTFCONVERT_PERMISSIVE") == ((void*)0)) {
  terminate("last cpu_t member before cpu_m is %s; "
      "it must be cpu_m_pad.\n", lml->ml_name);
 }

 if ((machcpu = lookup_tdesc(td, "machcpu")) == ((void*)0)) {
  machcpu = xcalloc(sizeof (*machcpu));
  machcpu->t_name = xstrdup("machcpu");
  machcpu->t_id = td->td_nextid++;
  machcpu->t_type = FORWARD;
 } else if (machcpu->t_type != STRUCT) {
  return;
 }

 debug(3, "Adding cpu_m machcpu %s to cpu struct\n",
     (machcpu->t_type == FORWARD ? "forward" : "struct"));

 cpum = xmalloc(sizeof (*cpum));
 cpum->ml_offset = lml->ml_offset + (ptrsize * NBBY);
 cpum->ml_size = 0;
 cpum->ml_name = xstrdup("cpu_m");
 cpum->ml_type = machcpu;
 cpum->ml_next = ((void*)0);

 lml->ml_next = cpum;
}
