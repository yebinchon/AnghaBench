
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bsdar {char* s_so; int s_so_cap; int s_cnt; char* s_sn; int s_sn_cap; size_t s_sn_sz; char rela_off; } ;


 void* _INIT_SYMNAME_CAP ;
 void* _INIT_SYMOFF_CAP ;
 int bsdar_errc (struct bsdar*,int ,char*) ;
 int errno ;
 void* malloc (void*) ;
 void* realloc (char*,int) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void
add_to_ar_sym_table(struct bsdar *bsdar, const char *name)
{

 if (bsdar->s_so == ((void*)0)) {
  if ((bsdar->s_so = malloc(_INIT_SYMOFF_CAP)) ==
      ((void*)0))
   bsdar_errc(bsdar, errno, "malloc failed");
  bsdar->s_so_cap = _INIT_SYMOFF_CAP;
  bsdar->s_cnt = 0;
 }

 if (bsdar->s_sn == ((void*)0)) {
  if ((bsdar->s_sn = malloc(_INIT_SYMNAME_CAP)) == ((void*)0))
   bsdar_errc(bsdar, errno, "malloc failed");
  bsdar->s_sn_cap = _INIT_SYMNAME_CAP;
  bsdar->s_sn_sz = 0;
 }

 if (bsdar->s_cnt * sizeof(uint32_t) >= bsdar->s_so_cap) {
  bsdar->s_so_cap *= 2;
  bsdar->s_so = realloc(bsdar->s_so, bsdar->s_so_cap);
  if (bsdar->s_so == ((void*)0))
   bsdar_errc(bsdar, errno, "realloc failed");
 }
 bsdar->s_so[bsdar->s_cnt] = bsdar->rela_off;
 bsdar->s_cnt++;






 while (bsdar->s_sn_sz + strlen(name) + 2 > bsdar->s_sn_cap) {
  bsdar->s_sn_cap *= 2;
  bsdar->s_sn = realloc(bsdar->s_sn, bsdar->s_sn_cap);
  if (bsdar->s_sn == ((void*)0))
   bsdar_errc(bsdar, errno, "realloc failed");
 }
 strncpy(&bsdar->s_sn[bsdar->s_sn_sz], name, strlen(name));
 bsdar->s_sn_sz += strlen(name);
 bsdar->s_sn[bsdar->s_sn_sz++] = '\0';
}
