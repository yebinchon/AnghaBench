
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int version; } ;


 scalar_t__ eqstr_chunk (char const*,int ,char const*,size_t) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__* protocol_versions ;
 int stderr ;
 int strlen (char const*) ;

unsigned
parse_version(const char *name, size_t len)
{
 size_t u;

 for (u = 0;; u ++) {
  const char *ref;

  ref = protocol_versions[u].name;
  if (ref == ((void*)0)) {
   fprintf(stderr, "ERROR: unrecognised protocol"
    " version name: '%s'\n", name);
   return 0;
  }
  if (eqstr_chunk(ref, strlen(ref), name, len)) {
   return protocol_versions[u].version;
  }
 }
}
