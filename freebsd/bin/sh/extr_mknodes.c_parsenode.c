
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str {scalar_t__ nfields; int done; void* tag; } ;


 int BUFLEN ;
 struct str* curstr ;
 int error (char*) ;
 char* linep ;
 int nextfield (char*) ;
 void** nodename ;
 struct str** nodestr ;
 int nstr ;
 size_t ntypes ;
 void* savestr (char*) ;
 struct str* str ;
 scalar_t__ strcmp (void*,char*) ;

__attribute__((used)) static void
parsenode(void)
{
 char name[BUFLEN];
 char tag[BUFLEN];
 struct str *sp;

 if (curstr && curstr->nfields > 0)
  curstr->done = 1;
 nextfield(name);
 if (! nextfield(tag))
  error("Tag expected");
 if (*linep != '\0')
  error("Garbage at end of line");
 nodename[ntypes] = savestr(name);
 for (sp = str ; sp < str + nstr ; sp++) {
  if (strcmp(sp->tag, tag) == 0)
   break;
 }
 if (sp >= str + nstr) {
  sp->tag = savestr(tag);
  sp->nfields = 0;
  curstr = sp;
  nstr++;
 }
 nodestr[ntypes] = sp;
 ntypes++;
}
