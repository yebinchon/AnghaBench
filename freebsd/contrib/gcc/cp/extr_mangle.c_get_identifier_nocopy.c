
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashnode ;


 int HT_ALLOCED ;
 int HT_IDENT_TO_GCC_IDENT (int ) ;
 int ht_lookup (int ,unsigned char const*,int ,int ) ;
 int ident_hash ;
 int strlen (char const*) ;

__attribute__((used)) static inline tree
get_identifier_nocopy (const char *name)
{
  hashnode ht_node = ht_lookup (ident_hash, (const unsigned char *) name,
    strlen (name), HT_ALLOCED);
  return HT_IDENT_TO_GCC_IDENT (ht_node);
}
