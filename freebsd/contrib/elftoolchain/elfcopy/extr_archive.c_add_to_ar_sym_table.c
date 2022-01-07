
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elfcopy {char* s_so; int s_so_cap; int s_cnt; char* s_sn; int s_sn_cap; size_t s_sn_sz; char rela_off; } ;


 int EXIT_FAILURE ;
 void* _INIT_SYMNAME_CAP ;
 void* _INIT_SYMOFF_CAP ;
 int err (int ,char*) ;
 void* malloc (void*) ;
 void* realloc (char*,int) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void
add_to_ar_sym_table(struct elfcopy *ecp, const char *name)
{

 if (ecp->s_so == ((void*)0)) {
  if ((ecp->s_so = malloc(_INIT_SYMOFF_CAP)) == ((void*)0))
   err(EXIT_FAILURE, "malloc failed");
  ecp->s_so_cap = _INIT_SYMOFF_CAP;
  ecp->s_cnt = 0;
 }

 if (ecp->s_sn == ((void*)0)) {
  if ((ecp->s_sn = malloc(_INIT_SYMNAME_CAP)) == ((void*)0))
   err(EXIT_FAILURE, "malloc failed");
  ecp->s_sn_cap = _INIT_SYMNAME_CAP;
  ecp->s_sn_sz = 0;
 }

 if (ecp->s_cnt * sizeof(uint32_t) >= ecp->s_so_cap) {
  ecp->s_so_cap *= 2;
  ecp->s_so = realloc(ecp->s_so, ecp->s_so_cap);
  if (ecp->s_so == ((void*)0))
   err(EXIT_FAILURE, "realloc failed");
 }
 ecp->s_so[ecp->s_cnt] = ecp->rela_off;
 ecp->s_cnt++;





 while (ecp->s_sn_sz + strlen(name) + 2 > ecp->s_sn_cap) {
  ecp->s_sn_cap *= 2;
  ecp->s_sn = realloc(ecp->s_sn, ecp->s_sn_cap);
  if (ecp->s_sn == ((void*)0))
   err(EXIT_FAILURE, "realloc failed");
 }
 strncpy(&ecp->s_sn[ecp->s_sn_sz], name, strlen(name));
 ecp->s_sn_sz += strlen(name);
 ecp->s_sn[ecp->s_sn_sz++] = '\0';
}
