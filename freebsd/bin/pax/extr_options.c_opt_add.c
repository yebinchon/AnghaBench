
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; char* value; struct TYPE_4__* fow; } ;
typedef TYPE_1__ OPLIST ;


 int free (char*) ;
 scalar_t__ malloc (int) ;
 TYPE_1__* ophead ;
 TYPE_1__* optail ;
 int paxwarn (int ,char*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

int
opt_add(const char *str)
{
 OPLIST *opt;
 char *frpt;
 char *pt;
 char *endpt;
 char *lstr;

 if ((str == ((void*)0)) || (*str == '\0')) {
  paxwarn(0, "Invalid option name");
  return(-1);
 }
 if ((lstr = strdup(str)) == ((void*)0)) {
  paxwarn(0, "Unable to allocate space for option list");
  return(-1);
 }
 frpt = endpt = lstr;






 while ((frpt != ((void*)0)) && (*frpt != '\0')) {
  if ((endpt = strchr(frpt, ',')) != ((void*)0))
   *endpt = '\0';
  if ((pt = strchr(frpt, '=')) == ((void*)0)) {
   paxwarn(0, "Invalid options format");
   free(lstr);
   return(-1);
  }
  if ((opt = (OPLIST *)malloc(sizeof(OPLIST))) == ((void*)0)) {
   paxwarn(0, "Unable to allocate space for option list");
   free(lstr);
   return(-1);
  }
  lstr = ((void*)0);
  *pt++ = '\0';
  opt->name = frpt;
  opt->value = pt;
  opt->fow = ((void*)0);
  if (endpt != ((void*)0))
   frpt = endpt + 1;
  else
   frpt = ((void*)0);
  if (ophead == ((void*)0)) {
   optail = ophead = opt;
   continue;
  }
  optail->fow = opt;
  optail = opt;
 }
 free(lstr);
 return(0);
}
