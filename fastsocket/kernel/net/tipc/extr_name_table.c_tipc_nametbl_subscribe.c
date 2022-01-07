
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int upper; int lower; int type; } ;
struct subscription {TYPE_1__ seq; } ;
struct name_seq {int lock; } ;
struct TYPE_4__ {int * types; } ;


 int dbg (char*,struct name_seq*,int ,int ,int ) ;
 size_t hash (int ) ;
 struct name_seq* nametbl_find_seq (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 TYPE_2__ table ;
 struct name_seq* tipc_nameseq_create (int ,int *) ;
 int tipc_nameseq_subscribe (struct name_seq*,struct subscription*) ;
 int tipc_nametbl_lock ;
 int warn (char*,int ,int ,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void tipc_nametbl_subscribe(struct subscription *s)
{
 u32 type = s->seq.type;
 struct name_seq *seq;

 write_lock_bh(&tipc_nametbl_lock);
 seq = nametbl_find_seq(type);
 if (!seq) {
  seq = tipc_nameseq_create(type, &table.types[hash(type)]);
 }
 if (seq){
  spin_lock_bh(&seq->lock);
  dbg("tipc_nametbl_subscribe:found %p for {%u,%u,%u}\n",
      seq, type, s->seq.lower, s->seq.upper);
  tipc_nameseq_subscribe(seq, s);
  spin_unlock_bh(&seq->lock);
 } else {
  warn("Failed to create subscription for {%u,%u,%u}\n",
       s->seq.type, s->seq.lower, s->seq.upper);
 }
 write_unlock_bh(&tipc_nametbl_lock);
}
