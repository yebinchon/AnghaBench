
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {char* long_name; int build_id; int short_name; scalar_t__ kernel; } ;


 int build_id_cache__add_b (int ,int,char*,char const*,int,int) ;
 int is_vdso_map (int ) ;

__attribute__((used)) static int dso__cache_build_id(struct dso *dso, const char *debugdir)
{
 bool is_kallsyms = dso->kernel && dso->long_name[0] != '/';
 bool is_vdso = is_vdso_map(dso->short_name);

 return build_id_cache__add_b(dso->build_id, sizeof(dso->build_id),
         dso->long_name, debugdir,
         is_kallsyms, is_vdso);
}
