
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char GElf_Sym ;


 int IS_SYM_TYPE (unsigned char) ;
 int IS_UNDEF_SYM_TYPE (unsigned char) ;
 int UNUSED (char const*) ;
 int assert (int ) ;

__attribute__((used)) static int
sym_elem_def(char type, const GElf_Sym *sym, const char *name)
{

 assert(IS_SYM_TYPE((unsigned char) type));

 UNUSED(sym);
 UNUSED(name);

 return (!IS_UNDEF_SYM_TYPE((unsigned char) type));
}
