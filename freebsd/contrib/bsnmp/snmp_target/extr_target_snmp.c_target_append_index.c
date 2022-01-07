
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t uint ;
struct asn_oid {size_t len; char* subs; } ;


 size_t strlen (char const*) ;

__attribute__((used)) static void
target_append_index(struct asn_oid *oid, uint sub, const char *name)
{
 uint32_t i;

 oid->len = sub + strlen(name);
 for (i = 0; i < strlen(name); i++)
  oid->subs[sub + i] = name[i];
}
