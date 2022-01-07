
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * string; } ;
struct cref_hash_entry {TYPE_1__ root; int * demangled; } ;
typedef int bfd_boolean ;


 int ASSERT (int ) ;
 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 int TRUE ;
 int * bfd_demangle (int ,int *,int) ;
 int output_bfd ;

__attribute__((used)) static bfd_boolean
cref_fill_array (struct cref_hash_entry *h, void *data)
{
  struct cref_hash_entry ***pph = data;

  ASSERT (h->demangled == ((void*)0));
  h->demangled = bfd_demangle (output_bfd, h->root.string,
          DMGL_ANSI | DMGL_PARAMS);
  if (h->demangled == ((void*)0))
    h->demangled = h->root.string;

  **pph = h;

  ++*pph;

  return TRUE;
}
