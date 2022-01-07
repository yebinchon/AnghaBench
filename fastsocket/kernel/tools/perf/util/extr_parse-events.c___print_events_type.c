
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct event_symbol {char* alias; char* symbol; } ;
typedef int name ;


 char** event_type_descriptors ;
 int printf (char*,char*,char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void __print_events_type(u8 type, struct event_symbol *syms,
    unsigned max)
{
 char name[64];
 unsigned i;

 for (i = 0; i < max ; i++, syms++) {
  if (strlen(syms->alias))
   snprintf(name, sizeof(name), "%s OR %s",
     syms->symbol, syms->alias);
  else
   snprintf(name, sizeof(name), "%s", syms->symbol);

  printf("  %-50s [%s]\n", name,
   event_type_descriptors[type]);
 }
}
