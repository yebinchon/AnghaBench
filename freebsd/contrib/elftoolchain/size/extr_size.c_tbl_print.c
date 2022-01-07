
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int col; int row; int* width; int *** tbl; } ;


 int EXIT_FAILURE ;
 int assert (int) ;
 int err (int ,char*) ;
 int * strdup (char const*) ;
 int strlen (char const*) ;
 TYPE_1__* tb ;

__attribute__((used)) static void
tbl_print(const char *s, int col)
{
 int len;

 assert(tb != ((void*)0) && tb->col > 0 && tb->row > 0 && col < tb->col);
 assert(s != ((void*)0) && tb->tbl[col][tb->row - 1] == ((void*)0));
 if ((tb->tbl[col][tb->row - 1] = strdup(s)) == ((void*)0))
  err(EXIT_FAILURE, "strdup");
 len = strlen(s);
 if (len > tb->width[col])
  tb->width[col] = len;
}
