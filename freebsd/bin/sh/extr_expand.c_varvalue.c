
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worddest {int state; } ;
struct TYPE_2__ {int nparam; char** p; } ;


 int EXP_FULL ;
 int EXP_SPLIT ;
 int NEXTWORD (char,int,int ,struct worddest*) ;
 int NSHORTOPTS ;
 int STPUTC (char,int ) ;
 int VSLENGTH ;
 int VSTRIMLEFT ;
 int VSTRIMLEFTMAX ;
 int VSTRIMRIGHT ;
 int VSTRIMRIGHTMAX ;
 int WORD_QUOTEMARK ;
 char* arg0 ;
 int atoi (char const*) ;
 int backgndpidval () ;
 int cvtnum (int,char*) ;
 int expdest ;
 int ifsset () ;
 char* ifsval () ;
 int is_digit (char const) ;
 int oexitstatus ;
 int * optletter ;
 int * optval ;
 int rootpid ;
 TYPE_1__ shellparam ;
 int strtodest (char*,int,int,int,struct worddest*) ;

__attribute__((used)) static void
varvalue(const char *name, int quoted, int subtype, int flag,
    struct worddest *dst)
{
 int num;
 char *p;
 int i;
 int splitlater;
 char sep[2];
 char **ap;
 char buf[(NSHORTOPTS > 10 ? NSHORTOPTS : 10) + 1];

 if (subtype == VSLENGTH)
  flag &= ~EXP_FULL;
 splitlater = subtype == VSTRIMLEFT || subtype == VSTRIMLEFTMAX ||
  subtype == VSTRIMRIGHT || subtype == VSTRIMRIGHTMAX;

 switch (*name) {
 case '$':
  num = rootpid;
  break;
 case '?':
  num = oexitstatus;
  break;
 case '#':
  num = shellparam.nparam;
  break;
 case '!':
  num = backgndpidval();
  break;
 case '-':
  p = buf;
  for (i = 0 ; i < NSHORTOPTS ; i++) {
   if (optval[i])
    *p++ = optletter[i];
  }
  *p = '\0';
  strtodest(buf, flag, subtype, quoted, dst);
  return;
 case '@':
  if (flag & EXP_SPLIT && quoted) {
   for (ap = shellparam.p ; (p = *ap++) != ((void*)0) ; ) {
    strtodest(p, flag, subtype, quoted, dst);
    if (*ap) {
     if (splitlater)
      STPUTC('\0', expdest);
     else
      NEXTWORD('\0', flag, expdest,
          dst);
    }
   }
   if (shellparam.nparam > 0)
    dst->state = WORD_QUOTEMARK;
   return;
  }

 case '*':
  if (ifsset())
   sep[0] = ifsval()[0];
  else
   sep[0] = ' ';
  sep[1] = '\0';
  for (ap = shellparam.p ; (p = *ap++) != ((void*)0) ; ) {
   strtodest(p, flag, subtype, quoted, dst);
   if (!*ap)
    break;
   if (sep[0])
    strtodest(sep, flag, subtype, quoted, dst);
   else if (flag & EXP_SPLIT && !quoted && **ap != '\0') {
    if (splitlater)
     STPUTC('\0', expdest);
    else
     NEXTWORD('\0', flag, expdest, dst);
   }
  }
  return;
 default:
  if (is_digit(*name)) {
   num = atoi(name);
   if (num == 0)
    p = arg0;
   else if (num > 0 && num <= shellparam.nparam)
    p = shellparam.p[num - 1];
   else
    return;
   strtodest(p, flag, subtype, quoted, dst);
  }
  return;
 }
 cvtnum(num, buf);
 strtodest(buf, flag, subtype, quoted, dst);
}
