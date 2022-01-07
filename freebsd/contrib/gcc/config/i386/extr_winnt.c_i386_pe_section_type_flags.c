
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ htab_t ;


 int DECL_ATTRIBUTES (scalar_t__) ;
 scalar_t__ DECL_ONE_ONLY (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 int INSERT ;
 unsigned int SECTION_CODE ;
 unsigned int SECTION_LINKONCE ;
 unsigned int SECTION_PE_SHARED ;
 unsigned int SECTION_WRITE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ decl_readonly_section (scalar_t__,int) ;
 int error (char*,scalar_t__) ;
 scalar_t__ htab_create (int,int ,int ,int *) ;
 int htab_eq_pointer ;
 scalar_t__ htab_find_slot (scalar_t__,char const*,int ) ;
 int htab_hash_pointer ;
 scalar_t__ lookup_attribute (char*,int ) ;
 scalar_t__ xmalloc (int) ;

unsigned int
i386_pe_section_type_flags (tree decl, const char *name, int reloc)
{
  static htab_t htab;
  unsigned int flags;
  unsigned int **slot;




  if (!htab)
    htab = htab_create (31, htab_hash_pointer, htab_eq_pointer, ((void*)0));

  if (decl && TREE_CODE (decl) == FUNCTION_DECL)
    flags = SECTION_CODE;
  else if (decl && decl_readonly_section (decl, reloc))
    flags = 0;
  else
    {
      flags = SECTION_WRITE;

      if (decl && TREE_CODE (decl) == VAR_DECL
   && lookup_attribute ("shared", DECL_ATTRIBUTES (decl)))
 flags |= SECTION_PE_SHARED;
    }

  if (decl && DECL_ONE_ONLY (decl))
    flags |= SECTION_LINKONCE;


  slot = (unsigned int **) htab_find_slot (htab, name, INSERT);
  if (!*slot)
    {
      *slot = (unsigned int *) xmalloc (sizeof (unsigned int));
      **slot = flags;
    }
  else
    {
      if (decl && **slot != flags)
 error ("%q+D causes a section type conflict", decl);
    }

  return flags;
}
