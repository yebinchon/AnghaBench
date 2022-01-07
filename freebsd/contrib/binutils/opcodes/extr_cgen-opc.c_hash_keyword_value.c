
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int hash_table_size; } ;
typedef TYPE_1__ CGEN_KEYWORD ;



__attribute__((used)) static unsigned int
hash_keyword_value (const CGEN_KEYWORD *kt, unsigned int value)
{
  return value % kt->hash_table_size;
}
