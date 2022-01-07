
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worddest {int dummy; } ;
typedef int ptrdiff_t ;


 int EXP_SPLIT ;
 int INTOFF ;
 int INTON ;
 int NEXTWORD (char,int,char*,struct worddest*) ;
 size_t PTRDIFF_MAX ;
 int SIZE_MAX ;
 int STADJUST (int ,char*) ;
 int abort () ;
 int ckfree (char*) ;
 char* ckmalloc (size_t) ;
 char* expdest ;
 int memcpy (char*,char*,size_t) ;
 char* stackblock () ;
 size_t strlen (char*) ;
 int strtodest (char*,int,int,int,struct worddest*) ;

__attribute__((used)) static void
reprocess(int startloc, int flag, int subtype, int quoted,
    struct worddest *dst)
{
 static char *buf = ((void*)0);
 static size_t buflen = 0;
 char *startp;
 size_t len, zpos, zlen;

 startp = stackblock() + startloc;
 len = expdest - startp;
 if (len >= SIZE_MAX / 2 || len > PTRDIFF_MAX)
  abort();
 INTOFF;
 if (len >= buflen) {
  ckfree(buf);
  buf = ((void*)0);
 }
 if (buflen < 128)
  buflen = 128;
 while (len >= buflen)
  buflen <<= 1;
 if (buf == ((void*)0))
  buf = ckmalloc(buflen);
 INTON;
 memcpy(buf, startp, len);
 buf[len] = '\0';
 STADJUST(-(ptrdiff_t)len, expdest);
 for (zpos = 0;;) {
  zlen = strlen(buf + zpos);
  strtodest(buf + zpos, flag, subtype, quoted, dst);
  zpos += zlen + 1;
  if (zpos == len + 1)
   break;
  if (flag & EXP_SPLIT && (quoted || (zlen > 0 && zpos < len)))
   NEXTWORD('\0', flag, expdest, dst);
 }
}
