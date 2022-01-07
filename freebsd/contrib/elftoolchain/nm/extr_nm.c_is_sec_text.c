
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sh_flags; } ;
typedef TYPE_1__ GElf_Shdr ;


 int SHF_EXECINSTR ;
 int assert (int ) ;

__attribute__((used)) static bool
is_sec_text(GElf_Shdr *s)
{

 assert(s != ((void*)0) && "shdr is NULL");

 return ((s->sh_flags & SHF_EXECINSTR) != 0);
}
