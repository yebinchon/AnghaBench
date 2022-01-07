
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct publication {int dummy; } ;
struct name_seq {int dummy; } ;
struct TYPE_2__ {int * types; } ;


 int dbg (char*,struct name_seq*,...) ;
 size_t hash (int ) ;
 struct name_seq* nametbl_find_seq (int ) ;
 TYPE_1__ table ;
 struct name_seq* tipc_nameseq_create (int ,int *) ;
 struct publication* tipc_nameseq_insert_publ (struct name_seq*,int ,int ,int ,int ,int ,int ,int ) ;
 int warn (char*,int ,int ,int ) ;

struct publication *tipc_nametbl_insert_publ(u32 type, u32 lower, u32 upper,
          u32 scope, u32 node, u32 port, u32 key)
{
 struct name_seq *seq = nametbl_find_seq(type);

 dbg("tipc_nametbl_insert_publ: {%u,%u,%u} found %p\n", type, lower, upper, seq);
 if (lower > upper) {
  warn("Failed to publish illegal {%u,%u,%u}\n",
       type, lower, upper);
  return ((void*)0);
 }

 dbg("Publishing {%u,%u,%u} from 0x%x\n", type, lower, upper, node);
 if (!seq) {
  seq = tipc_nameseq_create(type, &table.types[hash(type)]);
  dbg("tipc_nametbl_insert_publ: created %p\n", seq);
 }
 if (!seq)
  return ((void*)0);

 return tipc_nameseq_insert_publ(seq, type, lower, upper,
     scope, node, port, key);
}
