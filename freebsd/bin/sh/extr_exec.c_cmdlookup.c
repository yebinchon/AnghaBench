
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tblentry {int cmdname; int cmdtype; struct tblentry* next; } ;


 unsigned int CMDTABLESIZE ;
 int CMDUNKNOWN ;
 int INTOFF ;
 int INTON ;
 struct tblentry* ckmalloc (int) ;
 struct tblentry** cmdtable ;
 scalar_t__ equal (int ,char const*) ;
 struct tblentry** lastcmdentry ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static struct tblentry *
cmdlookup(const char *name, int add)
{
 unsigned int hashval;
 const char *p;
 struct tblentry *cmdp;
 struct tblentry **pp;
 size_t len;

 p = name;
 hashval = (unsigned char)*p << 4;
 while (*p)
  hashval += *p++;
 pp = &cmdtable[hashval % CMDTABLESIZE];
 for (cmdp = *pp ; cmdp ; cmdp = cmdp->next) {
  if (equal(cmdp->cmdname, name))
   break;
  pp = &cmdp->next;
 }
 if (add && cmdp == ((void*)0)) {
  INTOFF;
  len = strlen(name);
  cmdp = *pp = ckmalloc(sizeof (struct tblentry) + len + 1);
  cmdp->next = ((void*)0);
  cmdp->cmdtype = CMDUNKNOWN;
  memcpy(cmdp->cmdname, name, len + 1);
  INTON;
 }
 lastcmdentry = pp;
 return cmdp;
}
