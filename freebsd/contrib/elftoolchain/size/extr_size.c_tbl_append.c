
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int col; int row; int *** tbl; } ;


 int EXIT_FAILURE ;
 int assert (int) ;
 int err (int ,char*) ;
 int ** realloc (int **,int) ;
 TYPE_1__* tb ;

__attribute__((used)) static void
tbl_append(void)
{
 int i;

 assert(tb != ((void*)0) && tb->col > 0);
 tb->row++;
 for (i = 0; i < tb->col; i++) {
  tb->tbl[i] = realloc(tb->tbl[i], sizeof(*tb->tbl[i]) * tb->row);
  if (tb->tbl[i] == ((void*)0))
   err(EXIT_FAILURE, "realloc");
  tb->tbl[i][tb->row - 1] = ((void*)0);
 }
}
