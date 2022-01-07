
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readelf {scalar_t__ vn_s; scalar_t__ vd_s; scalar_t__ vs; scalar_t__ ver; scalar_t__ vs_s; } ;


 int dump_verdef (struct readelf*,int) ;
 int dump_verneed (struct readelf*,int) ;
 int dump_versym (struct readelf*) ;

__attribute__((used)) static void
dump_ver(struct readelf *re)
{

 if (re->vs_s && re->ver && re->vs)
  dump_versym(re);
 if (re->vd_s)
  dump_verdef(re, 1);
 if (re->vn_s)
  dump_verneed(re, 1);
}
