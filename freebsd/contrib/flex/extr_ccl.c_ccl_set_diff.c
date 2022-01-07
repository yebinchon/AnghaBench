
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ccl_contains (int,int) ;
 int ccladd (int,int) ;
 int cclinit () ;
 int csize ;
 int dump_cclp (int ,int) ;
 int fprintf (int ,char*) ;
 int stderr ;

int
ccl_set_diff (int a, int b)
{
    int d, ch;


    d = cclinit();





 for ( ch = 0; ch < csize; ++ch )
        if (ccl_contains (a, ch) && !ccl_contains(b, ch))
            ccladd (d, ch);


    if (0){
        fprintf(stderr, "ccl_set_diff (");
            fprintf(stderr, "\n    ");
            dump_cclp (stderr, a);
            fprintf(stderr, "\n    ");
            dump_cclp (stderr, b);
            fprintf(stderr, "\n    ");
            dump_cclp (stderr, d);
        fprintf(stderr, "\n)\n");
    }
    return d;
}
