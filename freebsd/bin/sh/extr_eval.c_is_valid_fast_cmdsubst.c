
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union node {scalar_t__ type; } ;


 scalar_t__ NCMD ;

__attribute__((used)) static int
is_valid_fast_cmdsubst(union node *n)
{

 return (n->type == NCMD);
}
