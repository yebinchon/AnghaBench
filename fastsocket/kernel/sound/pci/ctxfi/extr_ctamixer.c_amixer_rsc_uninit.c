
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amixer {int * sum; int * input; int * ops; int rsc; } ;


 int amixer_setup (struct amixer*,int *,int ,int *) ;
 int rsc_uninit (int *) ;

__attribute__((used)) static int amixer_rsc_uninit(struct amixer *amixer)
{
 amixer_setup(amixer, ((void*)0), 0, ((void*)0));
 rsc_uninit(&amixer->rsc);
 amixer->ops = ((void*)0);
 amixer->input = ((void*)0);
 amixer->sum = ((void*)0);
 return 0;
}
