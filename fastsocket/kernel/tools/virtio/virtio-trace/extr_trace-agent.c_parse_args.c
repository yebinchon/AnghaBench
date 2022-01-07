
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_info {int use_stdout; unsigned long pipe_size; } ;


 int EXIT_FAILURE ;
 int agent_info_init (struct agent_info*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 unsigned long parse_size (int ) ;
 int usage (char*) ;

__attribute__((used)) static void *parse_args(int argc, char *argv[], struct agent_info *s)
{
 int cmd;
 unsigned long size;

 while ((cmd = getopt(argc, argv, "hos:")) != -1) {
  switch (cmd) {

  case 'o':
   s->use_stdout = 1;
   break;

  case 's':
   size = parse_size(optarg);
   if (size == 0)
    goto error;
   s->pipe_size = size;
   break;
  case 'h':
  default:
   usage(argv[0]);
   goto error;
  }
 }

 agent_info_init(s);

 return ((void*)0);

error:
 exit(EXIT_FAILURE);
}
