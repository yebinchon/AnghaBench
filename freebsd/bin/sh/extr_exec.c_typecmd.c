
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPECMD_TYPE ;
 int bltinlookup (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int typecmd_impl (int,char**,int ,int ) ;

int
typecmd(int argc, char **argv)
{
 if (argc > 2 && strcmp(argv[1], "--") == 0)
  argc--, argv++;
 return typecmd_impl(argc, argv, TYPECMD_TYPE, bltinlookup("PATH", 1));
}
