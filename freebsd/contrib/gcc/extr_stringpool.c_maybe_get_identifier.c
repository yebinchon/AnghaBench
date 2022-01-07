
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ hashnode ;


 int HT_IDENT_TO_GCC_IDENT (scalar_t__) ;
 int HT_NO_INSERT ;
 int NULL_TREE ;
 scalar_t__ ht_lookup (int ,unsigned char const*,int ,int ) ;
 int ident_hash ;
 int strlen (char const*) ;

tree
maybe_get_identifier (const char *text)
{
  hashnode ht_node;

  ht_node = ht_lookup (ident_hash, (const unsigned char *) text,
         strlen (text), HT_NO_INSERT);
  if (ht_node)
    return HT_IDENT_TO_GCC_IDENT (ht_node);

  return NULL_TREE;
}
