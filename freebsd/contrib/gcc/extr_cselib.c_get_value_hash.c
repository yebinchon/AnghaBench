
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hashval_t ;
struct TYPE_2__ {int value; } ;
typedef TYPE_1__ cselib_val ;



__attribute__((used)) static hashval_t
get_value_hash (const void *entry)
{
  const cselib_val *v = (const cselib_val *) entry;
  return v->value;
}
