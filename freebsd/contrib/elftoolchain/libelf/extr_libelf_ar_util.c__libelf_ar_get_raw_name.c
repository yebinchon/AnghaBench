
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_hdr {int ar_name; } ;


 int LIBELF_SET_ERROR (int ,int ) ;
 int RESOURCE ;
 char* malloc (size_t const) ;
 int strncpy (char*,int ,size_t const) ;

char *
_libelf_ar_get_raw_name(const struct ar_hdr *arh)
{
 char *rawname;
 const size_t namesz = sizeof(arh->ar_name);

 if ((rawname = malloc(namesz + 1)) == ((void*)0)) {
  LIBELF_SET_ERROR(RESOURCE, 0);
  return (((void*)0));
 }

 (void) strncpy(rawname, arh->ar_name, namesz);
 rawname[namesz] = '\0';
 return (rawname);
}
