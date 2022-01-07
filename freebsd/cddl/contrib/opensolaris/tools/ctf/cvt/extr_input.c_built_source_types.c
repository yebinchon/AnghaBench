
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symit_data_t ;
typedef int source_types_t ;
typedef int Elf ;


 int SOURCE_C ;
 int SOURCE_NONE ;
 int SOURCE_S ;
 int SOURCE_UNKNOWN ;
 int STT_FILE ;
 size_t strlen (char*) ;
 int symit_free (int *) ;
 char* symit_name (int *) ;
 int * symit_new (int *,char const*) ;
 int * symit_next (int *,int ) ;

source_types_t
built_source_types(Elf *elf, char const *file)
{
 source_types_t types = SOURCE_NONE;
 symit_data_t *si;

 if ((si = symit_new(elf, file)) == ((void*)0))
  return (SOURCE_NONE);

 while (symit_next(si, STT_FILE) != ((void*)0)) {
  char *name = symit_name(si);
  size_t len = strlen(name);
  if (len < 2 || name[len - 2] != '.') {
   types |= SOURCE_UNKNOWN;
   continue;
  }

  switch (name[len - 1]) {
  case 'c':
   types |= SOURCE_C;
   break;
  case 'h':

   break;
  case 's':
  case 'S':
   types |= SOURCE_S;
   break;
  default:
   types |= SOURCE_UNKNOWN;
  }
 }

 symit_free(si);
 return (types);
}
