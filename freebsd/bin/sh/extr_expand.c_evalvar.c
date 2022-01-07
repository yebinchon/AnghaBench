
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worddest {int state; } ;
struct nodelist {struct nodelist* next; } ;
typedef int ptrdiff_t ;
typedef int buf ;


 int CTLBACKQ ;
 char const CTLENDVAR ;
 int CTLESC ;
 int CTLQUOTE ;
 int CTLVAR ;
 int EXP_LIT_QUOTED ;
 int EXP_SPLIT ;
 int EXP_SPLIT_LIT ;
 int STADJUST (int,char const*) ;
 int STPUTC (char,char const*) ;



 int VSLINENO ;


 int VSNUL ;


 int VSQUOTE ;




 int VSTYPE ;
 int WORD_QUOTEMARK ;
 int abort () ;
 char const* argstr (char const*,struct nodelist**,int,struct worddest*) ;
 char* bltinlookup (char const*,int) ;
 int cvtnum (int,char*) ;
 int error (char*,int,char const*,...) ;
 char const* expdest ;
 int is_name (char const) ;
 scalar_t__ localeisutf8 ;
 char* lookupvar (char const*) ;
 int memcpy (char*,char const*,int) ;
 int reprocess (int,int,int const,int,struct worddest*) ;
 char const* stackblock () ;
 char* strchr (char const*,char) ;
 int strtodest (char const*,int,int const,int,struct worddest*) ;
 char* subevalvar_misc (char const*,struct nodelist**,char const*,int,int,int) ;
 char* subevalvar_trim (char const*,struct nodelist**,int,int,int) ;
 scalar_t__ uflag ;
 int varisset (char const*,int) ;
 int varvalue (char const*,int,int,int,struct worddest*) ;

__attribute__((used)) static const char *
evalvar(const char *p, struct nodelist **restrict argbackq, int flag,
    struct worddest *dst)
{
 int subtype;
 int varflags;
 const char *var;
 const char *val;
 int patloc;
 int c;
 int set;
 int special;
 int startloc;
 int varlen;
 int varlenb;
 char buf[21];

 varflags = (unsigned char)*p++;
 subtype = varflags & VSTYPE;
 var = p;
 special = 0;
 if (! is_name(*p))
  special = 1;
 p = strchr(p, '=') + 1;
 if (varflags & VSLINENO) {
  set = 1;
  special = 1;
  val = ((void*)0);
 } else if (special) {
  set = varisset(var, varflags & VSNUL);
  val = ((void*)0);
 } else {
  val = bltinlookup(var, 1);
  if (val == ((void*)0) || ((varflags & VSNUL) && val[0] == '\0')) {
   val = ((void*)0);
   set = 0;
  } else
   set = 1;
 }
 varlen = 0;
 startloc = expdest - stackblock();
 if (!set && uflag && *var != '@' && *var != '*') {
  switch (subtype) {
  case 134:
  case 131:
  case 130:
  case 129:
  case 128:
  case 136:
   error("%.*s: parameter not set", (int)(p - var - 1),
       var);
  }
 }
 if (set && subtype != 133) {

  if (special) {
   if (varflags & VSLINENO) {
    if (p - var > (ptrdiff_t)sizeof(buf))
     abort();
    memcpy(buf, var, p - var - 1);
    buf[p - var - 1] = '\0';
    strtodest(buf, flag, subtype,
        varflags & VSQUOTE, dst);
   } else
    varvalue(var, varflags & VSQUOTE, subtype, flag,
        dst);
   if (subtype == 136) {
    varlenb = expdest - stackblock() - startloc;
    varlen = varlenb;
    if (localeisutf8) {
     val = stackblock() + startloc;
     for (;val != expdest; val++)
      if ((*val & 0xC0) == 0x80)
       varlen--;
    }
    STADJUST(-varlenb, expdest);
   }
  } else {
   if (subtype == 136) {
    for (;*val; val++)
     if (!localeisutf8 ||
         (*val & 0xC0) != 0x80)
      varlen++;
   }
   else
    strtodest(val, flag, subtype,
        varflags & VSQUOTE, dst);
  }
 }

 if (subtype == 133)
  set = ! set;

 switch (subtype) {
 case 136:
  cvtnum(varlen, buf);
  strtodest(buf, flag, 134, varflags & VSQUOTE, dst);
  break;

 case 134:
  return p;

 case 133:
 case 135:
  if (!set) {
   return argstr(p, argbackq,
       flag | (flag & EXP_SPLIT ? EXP_SPLIT_LIT : 0) |
       (varflags & VSQUOTE ? EXP_LIT_QUOTED : 0), dst);
  }
  break;

 case 131:
 case 130:
 case 129:
 case 128:
  if (!set)
   break;




  STPUTC('\0', expdest);
  patloc = expdest - stackblock();
  p = subevalvar_trim(p, argbackq, patloc, subtype, startloc);
  reprocess(startloc, flag, 134, varflags & VSQUOTE, dst);
  if (flag & EXP_SPLIT && *var == '@' && varflags & VSQUOTE)
   dst->state = WORD_QUOTEMARK;
  return p;

 case 138:
 case 132:
  if (!set) {
   p = subevalvar_misc(p, argbackq, var, subtype,
       startloc, varflags);

   val = lookupvar(var);
   strtodest(val, flag, subtype, varflags & VSQUOTE, dst);
   return p;
  }
  break;

 case 137:
  c = p - var - 1;
  error("${%.*s%s}: Bad substitution", c, var,
      (c > 0 && *p != CTLENDVAR) ? "..." : "");

 default:
  abort();
 }

 {
  int nesting = 1;
  for (;;) {
   if ((c = *p++) == CTLESC)
    p++;
   else if (c == CTLBACKQ || c == (CTLBACKQ|CTLQUOTE))
    *argbackq = (*argbackq)->next;
   else if (c == CTLVAR) {
    if ((*p++ & VSTYPE) != 134)
     nesting++;
   } else if (c == CTLENDVAR) {
    if (--nesting == 0)
     break;
   }
  }
 }
 return p;
}
