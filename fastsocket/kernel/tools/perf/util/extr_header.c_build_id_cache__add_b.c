
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BUILD_ID_SIZE ;
 int build_id__sprintf (int const*,size_t,char*) ;
 int build_id_cache__add_s (char*,char const*,char const*,int,int) ;

__attribute__((used)) static int build_id_cache__add_b(const u8 *build_id, size_t build_id_size,
     const char *name, const char *debugdir,
     bool is_kallsyms, bool is_vdso)
{
 char sbuild_id[BUILD_ID_SIZE * 2 + 1];

 build_id__sprintf(build_id, build_id_size, sbuild_id);

 return build_id_cache__add_s(sbuild_id, debugdir, name,
         is_kallsyms, is_vdso);
}
