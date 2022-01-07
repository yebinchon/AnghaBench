
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * addr_to_sym (uintptr_t,uintptr_t*,size_t*) ;

__attribute__((used)) static void
coalesce_symbol(uintptr_t *addrp)
{
 uintptr_t symoff;
 size_t symsize;

 if (addr_to_sym(*addrp, &symoff, &symsize) != ((void*)0) && symoff < symsize)
  *addrp -= symoff;
}
