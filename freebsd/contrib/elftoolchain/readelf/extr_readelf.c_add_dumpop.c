
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct readelf {int v_dumpop; } ;
struct TYPE_2__ {size_t si; char const* sn; } ;
struct dumpop {int type; int op; TYPE_1__ u; } ;


 int DUMP_BY_INDEX ;
 int EXIT_FAILURE ;
 int STAILQ_INSERT_TAIL (int *,struct dumpop*,int ) ;
 struct dumpop* calloc (int,int) ;
 int dumpop_list ;
 int err (int ,char*) ;
 struct dumpop* find_dumpop (struct readelf*,size_t,char const*,int,int) ;

__attribute__((used)) static void
add_dumpop(struct readelf *re, size_t si, const char *sn, int op, int t)
{
 struct dumpop *d;

 if ((d = find_dumpop(re, si, sn, -1, t)) == ((void*)0)) {
  if ((d = calloc(1, sizeof(*d))) == ((void*)0))
   err(EXIT_FAILURE, "calloc failed");
  if (t == DUMP_BY_INDEX)
   d->u.si = si;
  else
   d->u.sn = sn;
  d->type = t;
  d->op = op;
  STAILQ_INSERT_TAIL(&re->v_dumpop, d, dumpop_list);
 } else
  d->op |= op;
}
