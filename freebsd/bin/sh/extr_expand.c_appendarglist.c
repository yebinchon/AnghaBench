
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int count; int capacity; char** args; } ;
typedef int newargs ;


 int INT_MAX ;
 int error (char*) ;
 int memcpy (char**,char**,int) ;
 char** stalloc (int) ;

void
appendarglist(struct arglist *list, char *str)
{
 char **newargs;
 int newcapacity;

 if (list->count >= list->capacity) {
  newcapacity = list->capacity * 2;
  if (newcapacity < 16)
   newcapacity = 16;
  if (newcapacity > INT_MAX / (int)sizeof(newargs[0]))
   error("Too many entries in arglist");
  newargs = stalloc(newcapacity * sizeof(newargs[0]));
  memcpy(newargs, list->args, list->count * sizeof(newargs[0]));
  list->args = newargs;
  list->capacity = newcapacity;
 }
 list->args[list->count++] = str;
}
