
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * substitutions; } ;


 TYPE_1__ G ;
 size_t SUBID_ALLOCATOR ;
 size_t SUBID_BASIC_IOSTREAM ;
 size_t SUBID_BASIC_ISTREAM ;
 size_t SUBID_BASIC_OSTREAM ;
 size_t SUBID_BASIC_STRING ;
 size_t SUBID_CHAR_TRAITS ;
 int gcc_obstack_init (int *) ;
 int get_identifier (char*) ;
 int name_base ;
 int name_obstack ;
 int obstack_alloc (int *,int ) ;
 int * subst_identifiers ;

void
init_mangle (void)
{
  gcc_obstack_init (&name_obstack);
  name_base = obstack_alloc (&name_obstack, 0);
  G.substitutions = ((void*)0);



  subst_identifiers[SUBID_ALLOCATOR] = get_identifier ("allocator");
  subst_identifiers[SUBID_BASIC_STRING] = get_identifier ("basic_string");
  subst_identifiers[SUBID_CHAR_TRAITS] = get_identifier ("char_traits");
  subst_identifiers[SUBID_BASIC_ISTREAM] = get_identifier ("basic_istream");
  subst_identifiers[SUBID_BASIC_OSTREAM] = get_identifier ("basic_ostream");
  subst_identifiers[SUBID_BASIC_IOSTREAM] = get_identifier ("basic_iostream");
}
