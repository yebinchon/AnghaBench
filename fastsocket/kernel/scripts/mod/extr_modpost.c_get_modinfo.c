
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_next_modinfo (void*,unsigned long,char const*,int *) ;

__attribute__((used)) static char *get_modinfo(void *modinfo, unsigned long modinfo_len,
    const char *tag)

{
 return get_next_modinfo(modinfo, modinfo_len, tag, ((void*)0));
}
