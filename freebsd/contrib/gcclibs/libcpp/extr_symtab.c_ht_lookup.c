
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashnode ;
typedef int hash_table ;
typedef enum ht_lookup_option { ____Placeholder_ht_lookup_option } ht_lookup_option ;


 int calc_hash (unsigned char const*,size_t) ;
 int ht_lookup_with_hash (int *,unsigned char const*,size_t,int ,int) ;

hashnode
ht_lookup (hash_table *table, const unsigned char *str, size_t len,
    enum ht_lookup_option insert)
{
  return ht_lookup_with_hash (table, str, len, calc_hash (str, len),
         insert);
}
