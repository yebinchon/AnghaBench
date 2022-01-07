
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashnode ;


 int HT_ALLOC ;
 int HT_IDENT_TO_GCC_IDENT (int ) ;
 int ht_lookup (int ,unsigned char const*,size_t,int ) ;
 int ident_hash ;

tree
get_identifier_with_length (const char *text, size_t length)
{
  hashnode ht_node = ht_lookup (ident_hash,
    (const unsigned char *) text,
    length, HT_ALLOC);


  return HT_IDENT_TO_GCC_IDENT (ht_node);
}
