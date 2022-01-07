
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int pc_t ;
struct TYPE_6__ {int ls_count; uintptr_t ls_lock; uintptr_t ls_caller; int * ls_stack; scalar_t__ ls_event; } ;
typedef TYPE_1__ lsrec_t ;
struct TYPE_7__ {int dtrd_size; scalar_t__ dtrd_offset; } ;
typedef TYPE_2__ dtrace_recdesc_t ;
typedef scalar_t__ caddr_t ;


 scalar_t__ LS_HIST ;
 int bzero (TYPE_1__*,scalar_t__) ;
 int fail (int ,char*) ;
 scalar_t__ g_recsize ;
 uintptr_t strdup (char const*) ;

__attribute__((used)) static void
lsrec_fill(lsrec_t *lsrec, const dtrace_recdesc_t *rec, int nrecs, caddr_t data)
{
 bzero(lsrec, g_recsize);
 lsrec->ls_count = 1;

 if ((g_recsize > LS_HIST && nrecs < 4) || (nrecs < 3))
  fail(0, "truncated DTrace record");

 if (rec->dtrd_size != sizeof (uint64_t))
  fail(0, "bad event size in first record");


 lsrec->ls_event = (uint32_t)*((uint64_t *)(data + rec->dtrd_offset));
 rec++;
 lsrec->ls_lock = strdup((const char *)(data + rec->dtrd_offset));
 rec++;


 if (rec->dtrd_size != sizeof (uintptr_t))
  fail(0, "bad caller size in third record");


 lsrec->ls_caller = *((uintptr_t *)(data + rec->dtrd_offset));
 rec++;

 if (g_recsize > LS_HIST) {
  int frames, i;
  pc_t *stack;

  frames = rec->dtrd_size / sizeof (pc_t);

  stack = (pc_t *)(data + rec->dtrd_offset);

  for (i = 1; i < frames; i++)
   lsrec->ls_stack[i - 1] = stack[i];
 }
}
