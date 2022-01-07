
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_data {int name; } ;
typedef int hashval_t ;


 int htab_hash_string (int ) ;

__attribute__((used)) static hashval_t
hash_mode (const void *p)
{
  const struct mode_data *m = (const struct mode_data *)p;
  return htab_hash_string (m->name);
}
