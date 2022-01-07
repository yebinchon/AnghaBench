
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_string {int len; int text; } ;
typedef int hashval_t ;


 int hashmem (int ,int ) ;

__attribute__((used)) static hashval_t
cpp_string_hash (const void *a_p)
{
  const struct cpp_string *a = (const struct cpp_string *) a_p;
  return hashmem (a->text, a->len);
}
