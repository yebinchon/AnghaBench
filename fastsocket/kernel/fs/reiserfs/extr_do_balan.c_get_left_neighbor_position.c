
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int ** FL; int tb_path; } ;


 int B_NR_ITEMS (int *) ;
 int PATH_H_POSITION (int ,int) ;
 int * PATH_H_PPARENT (int ,int) ;
 int RFALSE (int,char*,int,int *,int,int *) ;

int get_left_neighbor_position(struct tree_balance *tb, int h)
{
 int Sh_position = PATH_H_POSITION(tb->tb_path, h + 1);

 RFALSE(PATH_H_PPARENT(tb->tb_path, h) == ((void*)0) || tb->FL[h] == ((void*)0),
        "vs-12325: FL[%d](%p) or F[%d](%p) does not exist",
        h, tb->FL[h], h, PATH_H_PPARENT(tb->tb_path, h));

 if (Sh_position == 0)
  return B_NR_ITEMS(tb->FL[h]);
 else
  return Sh_position - 1;
}
