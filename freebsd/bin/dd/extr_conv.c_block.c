
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_6__ {char* db; size_t dbrcnt; size_t dbcnt; char* dbp; } ;
struct TYPE_5__ {char* dbp; size_t dbcnt; size_t dbsz; } ;
struct TYPE_4__ {int trunc; } ;


 size_t MIN (size_t,size_t) ;
 size_t cbsz ;
 char* ctab ;
 int dd_out (int ) ;
 TYPE_3__ in ;
 int memmove (char*,char*,int) ;
 int memset (char*,char,size_t) ;
 TYPE_2__ out ;
 TYPE_1__ st ;

void
block(void)
{
 u_char *inp, *outp;
 const u_char *t;
 size_t cnt, maxlen;
 static int intrunc;
 int ch;







 if (intrunc) {
  for (inp = in.db, cnt = in.dbrcnt; cnt && *inp++ != '\n'; --cnt)
   ;
  if (!cnt) {
   in.dbcnt = 0;
   in.dbp = in.db;
   return;
  }
  intrunc = 0;

  in.dbcnt = cnt - 1;
  in.dbp = inp + cnt - 1;
 }





 ch = 0;
 for (inp = in.dbp - in.dbcnt, outp = out.dbp; in.dbcnt;) {
  maxlen = MIN(cbsz, (size_t)in.dbcnt);
  if ((t = ctab) != ((void*)0))
   for (cnt = 0; cnt < maxlen && (ch = *inp++) != '\n';
       ++cnt)
    *outp++ = t[ch];
  else
   for (cnt = 0; cnt < maxlen && (ch = *inp++) != '\n';
       ++cnt)
    *outp++ = ch;




  if (ch != '\n' && (size_t)in.dbcnt < cbsz) {
   (void)memmove(in.db, in.dbp - in.dbcnt, in.dbcnt);
   break;
  }


  in.dbcnt -= cnt;
  if (ch == '\n')
   --in.dbcnt;


  if (cnt < cbsz)
   (void)memset(outp, ctab ? ctab[' '] : ' ', cbsz - cnt);
  else {




   if (!in.dbcnt || *inp != '\n')
    ++st.trunc;


   for (; in.dbcnt && *inp++ != '\n'; --in.dbcnt)
    ;
   if (!in.dbcnt)
    intrunc = 1;
   else
    --in.dbcnt;
  }


  out.dbp += cbsz;
  if ((out.dbcnt += cbsz) >= out.dbsz)
   dd_out(0);
  outp = out.dbp;
 }
 in.dbp = in.db + in.dbcnt;
}
