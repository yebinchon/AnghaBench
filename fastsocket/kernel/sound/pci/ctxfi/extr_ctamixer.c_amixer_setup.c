
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sum {int dummy; } ;
struct rsc {int dummy; } ;
struct amixer {int dummy; } ;


 int amixer_commit_write (struct amixer*) ;
 int amixer_set_input (struct amixer*,struct rsc*) ;
 int amixer_set_sum (struct amixer*,struct sum*) ;
 int amixer_set_y (struct amixer*,unsigned int) ;

__attribute__((used)) static int amixer_setup(struct amixer *amixer, struct rsc *input,
   unsigned int scale, struct sum *sum)
{
 amixer_set_input(amixer, input);
 amixer_set_y(amixer, scale);
 amixer_set_sum(amixer, sum);
 amixer_commit_write(amixer);
 return 0;
}
