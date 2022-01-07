
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; int val; int name; } ;
typedef TYPE_1__ Var ;
struct TYPE_10__ {int context; } ;
typedef int Hash_Entry ;
typedef TYPE_2__ GNode ;


 char* ALLSRC ;
 char* ARCHIVE ;
 int Buf_AddBytes (int *,int,char*) ;
 int Buf_Init (int *,int) ;
 int FIND_CMD ;
 int FIND_ENV ;
 int FIND_GLOBAL ;
 int * Hash_FindEntry (int *,char const*) ;
 scalar_t__ Hash_GetValue (int *) ;
 char* IMPSRC ;
 char* MEMBER ;
 char* OODATE ;
 char* PREFIX ;
 char* TARGET ;
 TYPE_2__* VAR_CMD ;
 int VAR_FROM_ENV ;
 TYPE_2__* VAR_GLOBAL ;
 TYPE_2__* VAR_INTERNAL ;
 TYPE_1__* bmake_malloc (int) ;
 int bmake_strdup (char const*) ;
 scalar_t__ checkEnvFirst ;
 char* getenv (char const*) ;
 scalar_t__ isupper (unsigned char) ;
 int strcmp (char const*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static Var *
VarFind(const char *name, GNode *ctxt, int flags)
{
    Hash_Entry *var;
    Var *v;







 if (*name == '.' && isupper((unsigned char) name[1]))
  switch (name[1]) {
  case 'A':
   if (!strcmp(name, ".ALLSRC"))
    name = ALLSRC;
   if (!strcmp(name, ".ARCHIVE"))
    name = ARCHIVE;
   break;
  case 'I':
   if (!strcmp(name, ".IMPSRC"))
    name = IMPSRC;
   break;
  case 'M':
   if (!strcmp(name, ".MEMBER"))
    name = MEMBER;
   break;
  case 'O':
   if (!strcmp(name, ".OODATE"))
    name = OODATE;
   break;
  case 'P':
   if (!strcmp(name, ".PREFIX"))
    name = PREFIX;
   break;
  case 'T':
   if (!strcmp(name, ".TARGET"))
    name = TARGET;
   break;
  }
    var = Hash_FindEntry(&ctxt->context, name);

    if ((var == ((void*)0)) && (flags & FIND_CMD) && (ctxt != VAR_CMD)) {
 var = Hash_FindEntry(&VAR_CMD->context, name);
    }
    if (!checkEnvFirst && (var == ((void*)0)) && (flags & FIND_GLOBAL) &&
 (ctxt != VAR_GLOBAL))
    {
 var = Hash_FindEntry(&VAR_GLOBAL->context, name);
 if ((var == ((void*)0)) && (ctxt != VAR_INTERNAL)) {

     var = Hash_FindEntry(&VAR_INTERNAL->context, name);
 }
    }
    if ((var == ((void*)0)) && (flags & FIND_ENV)) {
 char *env;

 if ((env = getenv(name)) != ((void*)0)) {
     int len;

     v = bmake_malloc(sizeof(Var));
     v->name = bmake_strdup(name);

     len = strlen(env);

     Buf_Init(&v->val, len + 1);
     Buf_AddBytes(&v->val, len, env);

     v->flags = VAR_FROM_ENV;
     return (v);
 } else if (checkEnvFirst && (flags & FIND_GLOBAL) &&
     (ctxt != VAR_GLOBAL))
 {
     var = Hash_FindEntry(&VAR_GLOBAL->context, name);
     if ((var == ((void*)0)) && (ctxt != VAR_INTERNAL)) {
  var = Hash_FindEntry(&VAR_INTERNAL->context, name);
     }
     if (var == ((void*)0)) {
  return ((void*)0);
     } else {
  return ((Var *)Hash_GetValue(var));
     }
 } else {
     return ((void*)0);
 }
    } else if (var == ((void*)0)) {
 return ((void*)0);
    } else {
 return ((Var *)Hash_GetValue(var));
    }
}
