
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char GElf_Sym ;


 int IS_SYM_TYPE (unsigned char) ;
 int UNUSED (char const*) ;
 int assert (int ) ;
 scalar_t__ isupper (unsigned char) ;

__attribute__((used)) static int
sym_elem_global(char type, const GElf_Sym *sym, const char *name)
{

 assert(IS_SYM_TYPE((unsigned char) type));

 UNUSED(sym);
 UNUSED(name);


 return (isupper((unsigned char) type) || type == 'w');
}
