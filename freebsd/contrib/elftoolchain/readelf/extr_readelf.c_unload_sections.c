
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readelf {scalar_t__ ver_sz; int * ver; scalar_t__ vs_sz; int * vs; int * vs_s; int * vn_s; int * vd_s; scalar_t__ shnum; int * sl; } ;


 int free (int *) ;

__attribute__((used)) static void
unload_sections(struct readelf *re)
{

 if (re->sl != ((void*)0)) {
  free(re->sl);
  re->sl = ((void*)0);
 }
 re->shnum = 0;
 re->vd_s = ((void*)0);
 re->vn_s = ((void*)0);
 re->vs_s = ((void*)0);
 re->vs = ((void*)0);
 re->vs_sz = 0;
 if (re->ver != ((void*)0)) {
  free(re->ver);
  re->ver = ((void*)0);
  re->ver_sz = 0;
 }
}
