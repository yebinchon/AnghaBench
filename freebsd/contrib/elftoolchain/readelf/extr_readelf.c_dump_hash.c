
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct section {scalar_t__ type; int entsize; } ;
struct TYPE_2__ {scalar_t__ e_machine; } ;
struct readelf {size_t shnum; TYPE_1__ ehdr; struct section* sl; } ;


 scalar_t__ EM_ALPHA ;
 scalar_t__ SHT_GNU_HASH ;
 scalar_t__ SHT_HASH ;
 int dump_gnu_hash (struct readelf*,struct section*) ;
 int dump_svr4_hash (struct section*) ;
 int dump_svr4_hash64 (struct readelf*,struct section*) ;

__attribute__((used)) static void
dump_hash(struct readelf *re)
{
 struct section *s;
 int i;

 for (i = 0; (size_t) i < re->shnum; i++) {
  s = &re->sl[i];
  if (s->type == SHT_HASH || s->type == SHT_GNU_HASH) {
   if (s->type == SHT_GNU_HASH)
    dump_gnu_hash(re, s);
   else if (re->ehdr.e_machine == EM_ALPHA &&
       s->entsize == 8)
    dump_svr4_hash64(re, s);
   else
    dump_svr4_hash(s);
  }
 }
}
