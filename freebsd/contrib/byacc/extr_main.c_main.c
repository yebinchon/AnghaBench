
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int RRexpect ;
 int SRexpect ;
 int done (int ) ;
 int exit_code ;
 int finalize_closure () ;
 int getargs (int,char**) ;
 int graph () ;
 int lalr () ;
 int lr0 () ;
 int make_parser () ;
 int open_files () ;
 int output () ;
 int reader () ;
 int set_signals () ;
 int verbose () ;

int
main(int argc, char *argv[])
{
    SRexpect = -1;
    RRexpect = -1;
    exit_code = EXIT_SUCCESS;

    set_signals();
    getargs(argc, argv);
    open_files();
    reader();
    lr0();
    lalr();
    make_parser();
    graph();
    finalize_closure();
    verbose();
    output();
    done(exit_code);

}
