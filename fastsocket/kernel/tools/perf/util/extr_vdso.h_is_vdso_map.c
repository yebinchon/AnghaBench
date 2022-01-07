
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VDSO__MAP_NAME ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static inline bool is_vdso_map(const char *filename)
{
 return !strcmp(filename, VDSO__MAP_NAME);
}
