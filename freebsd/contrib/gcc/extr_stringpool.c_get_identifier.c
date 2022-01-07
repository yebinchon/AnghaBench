
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashnode ;


 int HT_ALLOC ;
 int HT_IDENT_TO_GCC_IDENT (int ) ;
 int ht_lookup (int ,unsigned char const*,int ,int ) ;
 int ident_hash ;
 int strlen (char const*) ;

tree
get_identifier (const char *text)
{
  hashnode ht_node = ht_lookup (ident_hash,
    (const unsigned char *) text,
    strlen (text), HT_ALLOC);


  return HT_IDENT_TO_GCC_IDENT (ht_node);
}
