
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_struct {int dummy; } ;


 int malloc (int) ;
 int max_ops ;
 scalar_t__ no_ops ;
 int op_array ;

__attribute__((used)) static void
createTable (void)
{
  max_ops = 256;
  op_array = malloc (max_ops * sizeof (struct op_struct));
  no_ops = 0;
}
