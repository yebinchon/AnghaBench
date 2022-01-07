
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int replay_buds; } ;
struct ubifs_bud {int lnum; int start; int jhead; } ;
struct bud_entry {unsigned long long sqnum; int list; struct ubifs_bud* bud; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dbg_mnt (char*,int,int,int) ;
 int kfree (struct ubifs_bud*) ;
 void* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int ubifs_add_bud (struct ubifs_info*,struct ubifs_bud*) ;

__attribute__((used)) static int add_replay_bud(struct ubifs_info *c, int lnum, int offs, int jhead,
     unsigned long long sqnum)
{
 struct ubifs_bud *bud;
 struct bud_entry *b;

 dbg_mnt("add replay bud LEB %d:%d, head %d", lnum, offs, jhead);

 bud = kmalloc(sizeof(struct ubifs_bud), GFP_KERNEL);
 if (!bud)
  return -ENOMEM;

 b = kmalloc(sizeof(struct bud_entry), GFP_KERNEL);
 if (!b) {
  kfree(bud);
  return -ENOMEM;
 }

 bud->lnum = lnum;
 bud->start = offs;
 bud->jhead = jhead;
 ubifs_add_bud(c, bud);

 b->bud = bud;
 b->sqnum = sqnum;
 list_add_tail(&b->list, &c->replay_buds);

 return 0;
}
