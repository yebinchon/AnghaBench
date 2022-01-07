
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static inline int same_magic(const char *amagic, const char *bmagic,
        bool has_crcs)
{
 return strcmp(amagic, bmagic) == 0;
}
