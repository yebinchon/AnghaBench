
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int hash_table_size; } ;
typedef TYPE_1__ CGEN_KEYWORD ;


 scalar_t__ TOLOWER (char const) ;

__attribute__((used)) static unsigned int
hash_keyword_name (const CGEN_KEYWORD *kt,
     const char *name,
     int case_sensitive_p)
{
  unsigned int hash;

  if (case_sensitive_p)
    for (hash = 0; *name; ++name)
      hash = (hash * 97) + (unsigned char) *name;
  else
    for (hash = 0; *name; ++name)
      hash = (hash * 97) + (unsigned char) TOLOWER (*name);
  return hash % kt->hash_table_size;
}
