
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int tb_path; int ** FR; } ;


 int B_NR_ITEMS (int *) ;
 int PATH_H_POSITION (int ,int) ;
 int * PATH_H_PPARENT (int ,int) ;
 int RFALSE (int,char*,int,int *,int,int *) ;

int get_right_neighbor_position(struct tree_balance *tb, int h)
{
 int Sh_position = PATH_H_POSITION(tb->tb_path, h + 1);

 RFALSE(PATH_H_PPARENT(tb->tb_path, h) == ((void*)0) || tb->FR[h] == ((void*)0),
        "vs-12330: F[%d](%p) or FR[%d](%p) does not exist",
        h, PATH_H_PPARENT(tb->tb_path, h), h, tb->FR[h]);

 if (Sh_position == B_NR_ITEMS(PATH_H_PPARENT(tb->tb_path, h)))
  return 0;
 else
  return Sh_position + 1;
}
