
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dbcnt; scalar_t__ dbp; } ;
struct TYPE_5__ {int dbcnt; scalar_t__ dbp; } ;
struct TYPE_4__ {int trunc; } ;


 scalar_t__ cbsz ;
 char* ctab ;
 TYPE_3__ in ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int memset (scalar_t__,char,scalar_t__) ;
 TYPE_2__ out ;
 TYPE_1__ st ;

void
block_close(void)
{
 if (in.dbcnt) {
  ++st.trunc;
  (void)memmove(out.dbp, in.dbp - in.dbcnt, in.dbcnt);
  (void)memset(out.dbp + in.dbcnt, ctab ? ctab[' '] : ' ',
      cbsz - in.dbcnt);
  out.dbcnt += cbsz;
 }
}
