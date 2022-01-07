
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union node* ch2; union node* ch1; } ;
union node {int type; TYPE_1__ nbinary; } ;
struct nbinary {int dummy; } ;


 scalar_t__ stalloc (int) ;

__attribute__((used)) static union node *
makebinary(int type, union node *n1, union node *n2)
{
 union node *n;

 n = (union node *)stalloc(sizeof (struct nbinary));
 n->type = type;
 n->nbinary.ch1 = n1;
 n->nbinary.ch2 = n2;
 return (n);
}
