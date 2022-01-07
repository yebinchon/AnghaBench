
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct machine {int dummy; } ;
struct branch_stack {unsigned int nr; TYPE_1__* entries; } ;
struct branch_info {int flags; int from; int to; } ;
struct TYPE_2__ {int flags; int from; int to; } ;


 struct branch_info* calloc (unsigned int,int) ;
 int ip__resolve_ams (struct machine*,struct thread*,int *,int ) ;

struct branch_info *machine__resolve_bstack(struct machine *self,
         struct thread *thr,
         struct branch_stack *bs)
{
 struct branch_info *bi;
 unsigned int i;

 bi = calloc(bs->nr, sizeof(struct branch_info));
 if (!bi)
  return ((void*)0);

 for (i = 0; i < bs->nr; i++) {
  ip__resolve_ams(self, thr, &bi[i].to, bs->entries[i].to);
  ip__resolve_ams(self, thr, &bi[i].from, bs->entries[i].from);
  bi[i].flags = bs->entries[i].flags;
 }
 return bi;
}
