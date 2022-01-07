
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashval_t ;


 int htab_hash_string (char const* const) ;
 int stub1 (char const* const) ;

__attribute__((used)) static hashval_t
hash_string_hash (const void *s_p)
{
  const char *const *s = (const char *const *) s_p;
  return (*htab_hash_string) (*s);
}
