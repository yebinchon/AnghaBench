
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_ref_node {int jhead; int offs; int lnum; } ;
struct ubifs_info {unsigned int jhead_cnt; int leb_cnt; int main_first; unsigned int leb_size; int min_io_size; } ;
struct ubifs_bud {unsigned int jhead; unsigned int start; } ;


 int EINVAL ;
 void* le32_to_cpu (int ) ;
 int ubifs_err (char*,int,unsigned int) ;
 struct ubifs_bud* ubifs_search_bud (struct ubifs_info*,int) ;

__attribute__((used)) static int validate_ref(struct ubifs_info *c, const struct ubifs_ref_node *ref)
{
 struct ubifs_bud *bud;
 int lnum = le32_to_cpu(ref->lnum);
 unsigned int offs = le32_to_cpu(ref->offs);
 unsigned int jhead = le32_to_cpu(ref->jhead);






 if (jhead >= c->jhead_cnt || lnum >= c->leb_cnt ||
     lnum < c->main_first || offs > c->leb_size ||
     offs & (c->min_io_size - 1))
  return -EINVAL;


 bud = ubifs_search_bud(c, lnum);
 if (bud) {
  if (bud->jhead == jhead && bud->start <= offs)
   return 1;
  ubifs_err("bud at LEB %d:%d was already referred", lnum, offs);
  return -EINVAL;
 }

 return 0;
}
