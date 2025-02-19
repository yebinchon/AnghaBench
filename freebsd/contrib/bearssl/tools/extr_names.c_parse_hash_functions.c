
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; TYPE_1__* hclass; } ;
struct TYPE_3__ {int desc; } ;


 int BR_HASHDESC_ID_MASK ;
 int BR_HASHDESC_ID_OFF ;
 scalar_t__ eqstr_chunk (char const*,int ,char const*,size_t) ;
 int fprintf (int ,char*) ;
 int fwrite (char const*,int,size_t,int ) ;
 TYPE_2__* hash_functions ;
 char* next_word (char const**,size_t*) ;
 int stderr ;
 int strlen (char const*) ;

unsigned
parse_hash_functions(const char *arg)
{
 unsigned r;

 r = 0;
 for (;;) {
  const char *name;
  size_t len;
  size_t u;

  name = next_word(&arg, &len);
  if (name == ((void*)0)) {
   break;
  }
  for (u = 0;; u ++) {
   const char *ref;

   ref = hash_functions[u].name;
   if (ref == 0) {
    fprintf(stderr, "ERROR: unrecognised"
     " hash function name: '");
    fwrite(name, 1, len, stderr);
    fprintf(stderr, "'\n");
    return 0;
   }
   if (eqstr_chunk(ref, strlen(ref), name, len)) {
    int id;

    id = (hash_functions[u].hclass->desc
     >> BR_HASHDESC_ID_OFF)
     & BR_HASHDESC_ID_MASK;
    r |= (unsigned)1 << id;
    break;
   }
  }
 }
 if (r == 0) {
  fprintf(stderr, "ERROR: no hash function name provided\n");
 }
 return r;
}
