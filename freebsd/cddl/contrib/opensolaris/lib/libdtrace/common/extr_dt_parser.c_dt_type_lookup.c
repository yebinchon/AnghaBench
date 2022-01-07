
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_typeinfo_t ;
typedef int dtrace_hdl_t ;
struct TYPE_2__ {scalar_t__ pcb_idepth; int * pcb_hdl; } ;


 char* DTRACE_OBJ_CDEFS ;
 char* DTRACE_OBJ_EVERY ;
 int EDT_BADSCOPE ;
 char* alloca (size_t) ;
 int bcopy (char const*,char*,int) ;
 int dt_set_errno (int *,int ) ;
 int dtrace_lookup_by_type (int *,char const*,char const*,int *) ;
 scalar_t__ isspace (char const) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 char* strpbrk (char const*,char const*) ;
 TYPE_1__* yypcb ;

int
dt_type_lookup(const char *s, dtrace_typeinfo_t *tip)
{
 static const char delimiters[] = " \t\n\r\v\f*`";
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 const char *p, *q, *r, *end, *obj;

 for (p = s, end = s + strlen(s); *p != '\0'; p = q) {
  while (isspace(*p))
   p++;

  if (p == end || (q = strpbrk(p + 1, delimiters)) == ((void*)0))
   break;

  if (*q == '`') {
   char *object = alloca((size_t)(q - p) + 1);
   char *type = alloca((size_t)(end - s) + 1);





   bcopy(p, object, (size_t)(q - p));
   object[(size_t)(q - p)] = '\0';






   bcopy(s, type, (size_t)(p - s));
   bcopy(q + 1, type + (size_t)(p - s), strlen(q + 1) + 1);
   if ((r = strchr(q + 1, '`')) != ((void*)0) &&
       ((r = strchr(r + 1, '`')) != ((void*)0))) {
    if (strchr(r + 1, '`') != ((void*)0))
     return (dt_set_errno(dtp,
         EDT_BADSCOPE));
    if (q[1] != 'L' || q[2] != 'M')
     return (dt_set_errno(dtp,
         EDT_BADSCOPE));
   }

   return (dtrace_lookup_by_type(dtp, object, type, tip));
  }
 }

 if (yypcb->pcb_idepth != 0)
  obj = DTRACE_OBJ_CDEFS;
 else
  obj = DTRACE_OBJ_EVERY;

 return (dtrace_lookup_by_type(dtp, obj, s, tip));
}
