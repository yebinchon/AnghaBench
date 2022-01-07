
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sh_flags; scalar_t__ sh_type; } ;
typedef TYPE_1__ GElf_Shdr ;


 int SHF_ALLOC ;
 scalar_t__ SHT_NOBITS ;
 int assert (int ) ;

__attribute__((used)) static bool
is_sec_data(GElf_Shdr *s)
{

 assert(s != ((void*)0) && "shdr is NULL");

 return (((s->sh_flags & SHF_ALLOC) != 0) && s->sh_type != SHT_NOBITS);
}
