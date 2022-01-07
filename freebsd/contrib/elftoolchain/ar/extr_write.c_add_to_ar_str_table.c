
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {char* as; int as_cap; size_t as_sz; } ;


 int _INIT_AS_CAP ;
 int bsdar_errc (struct bsdar*,int ,char*) ;
 int errno ;
 char* malloc (int) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void
add_to_ar_str_table(struct bsdar *bsdar, const char *name)
{

 if (bsdar->as == ((void*)0)) {
  bsdar->as_cap = _INIT_AS_CAP;
  bsdar->as_sz = 0;
  if ((bsdar->as = malloc(bsdar->as_cap)) == ((void*)0))
   bsdar_errc(bsdar, errno, "malloc failed");
 }






 while (bsdar->as_sz + strlen(name) + 3 > bsdar->as_cap) {
  bsdar->as_cap *= 2;
  bsdar->as = realloc(bsdar->as, bsdar->as_cap);
  if (bsdar->as == ((void*)0))
   bsdar_errc(bsdar, errno, "realloc failed");
 }
 strncpy(&bsdar->as[bsdar->as_sz], name, strlen(name));
 bsdar->as_sz += strlen(name);
 bsdar->as[bsdar->as_sz++] = '/';
 bsdar->as[bsdar->as_sz++] = '\n';
}
