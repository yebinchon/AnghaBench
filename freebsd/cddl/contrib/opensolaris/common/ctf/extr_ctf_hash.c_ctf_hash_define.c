
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort_t ;
typedef int uint_t ;
struct TYPE_3__ {int h_type; } ;
typedef TYPE_1__ ctf_helem_t ;
typedef int ctf_hash_t ;
typedef int ctf_file_t ;


 int ctf_hash_insert (int *,int *,int ,int ) ;
 TYPE_1__* ctf_hash_lookup (int *,int *,char const*,int ) ;
 char* ctf_strptr (int *,int ) ;
 int strlen (char const*) ;

int
ctf_hash_define(ctf_hash_t *hp, ctf_file_t *fp, ushort_t type, uint_t name)
{
 const char *str = ctf_strptr(fp, name);
 ctf_helem_t *hep = ctf_hash_lookup(hp, fp, str, strlen(str));

 if (hep == ((void*)0))
  return (ctf_hash_insert(hp, fp, type, name));

 hep->h_type = type;
 return (0);
}
