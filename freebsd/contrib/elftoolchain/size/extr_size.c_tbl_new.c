
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int col; scalar_t__ row; int * width; int * tbl; } ;


 int EXIT_FAILURE ;
 int assert (int) ;
 void* calloc (int,int) ;
 int err (int ,char*) ;
 TYPE_1__* tb ;

__attribute__((used)) static void
tbl_new(int col)
{

 assert(tb == ((void*)0));
 assert(col > 0);
 if ((tb = calloc(1, sizeof(*tb))) == ((void*)0))
  err(EXIT_FAILURE, "calloc");
 if ((tb->tbl = calloc(col, sizeof(*tb->tbl))) == ((void*)0))
  err(EXIT_FAILURE, "calloc");
 if ((tb->width = calloc(col, sizeof(*tb->width))) == ((void*)0))
  err(EXIT_FAILURE, "calloc");
 tb->col = col;
 tb->row = 0;
}
