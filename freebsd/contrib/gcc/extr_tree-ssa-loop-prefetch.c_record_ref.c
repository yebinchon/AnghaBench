
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct mem_ref_group {struct mem_ref* refs; } ;
struct mem_ref {int write_p; scalar_t__ delta; int prefetch_mod; int issue_prefetch_p; struct mem_ref* next; struct mem_ref_group* group; int prefetch_before; void* mem; void* stmt; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 int PREFETCH_ALL ;
 int READ_CAN_USE_WRITE_PREFETCH ;
 int TDF_DETAILS ;
 int WRITE_CAN_USE_READ_PREFETCH ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_mem_ref (scalar_t__,struct mem_ref*) ;
 struct mem_ref* xcalloc (int,int) ;

__attribute__((used)) static void
record_ref (struct mem_ref_group *group, tree stmt, tree mem,
     HOST_WIDE_INT delta, bool write_p)
{
  struct mem_ref **aref;


  for (aref = &group->refs; *aref; aref = &(*aref)->next)
    {


      if (!WRITE_CAN_USE_READ_PREFETCH
   && write_p
   && !(*aref)->write_p)
 continue;
      if (!READ_CAN_USE_WRITE_PREFETCH
   && !write_p
   && (*aref)->write_p)
 continue;

      if ((*aref)->delta == delta)
 return;
    }

  (*aref) = xcalloc (1, sizeof (struct mem_ref));
  (*aref)->stmt = stmt;
  (*aref)->mem = mem;
  (*aref)->delta = delta;
  (*aref)->write_p = write_p;
  (*aref)->prefetch_before = PREFETCH_ALL;
  (*aref)->prefetch_mod = 1;
  (*aref)->issue_prefetch_p = 0;
  (*aref)->group = group;
  (*aref)->next = ((void*)0);

  if (dump_file && (dump_flags & TDF_DETAILS))
    dump_mem_ref (dump_file, *aref);
}
