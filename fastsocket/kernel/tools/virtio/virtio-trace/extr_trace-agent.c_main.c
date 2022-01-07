
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_info {int dummy; } ;


 int agent_info_free (struct agent_info*) ;
 struct agent_info* agent_info_new () ;
 int agent_main_loop (struct agent_info*) ;
 int parse_args (int,char**,struct agent_info*) ;

int main(int argc, char *argv[])
{
 struct agent_info *s = ((void*)0);

 s = agent_info_new();
 parse_args(argc, argv, s);

 agent_main_loop(s);

 agent_info_free(s);

 return 0;
}
