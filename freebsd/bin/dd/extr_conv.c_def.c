
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_char ;
struct TYPE_4__ {size_t* dbp; size_t dbrcnt; scalar_t__ dbcnt; } ;
struct TYPE_3__ {size_t* dbp; scalar_t__ dbcnt; scalar_t__ dbsz; } ;


 size_t* ctab ;
 int dd_out (int ) ;
 TYPE_2__ in ;
 TYPE_1__ out ;

void
def(void)
{
 u_char *inp;
 const u_char *t;
 size_t cnt;

 if ((t = ctab) != ((void*)0))
  for (inp = in.dbp - (cnt = in.dbrcnt); cnt--; ++inp)
   *inp = t[*inp];


 out.dbp = in.dbp;
 out.dbcnt = in.dbcnt;

 if (in.dbcnt >= out.dbsz) {

  dd_out(0);






  in.dbp = out.dbp;
  in.dbcnt = out.dbcnt;
 }
}
