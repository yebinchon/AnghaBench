
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccladd (int,int ) ;
 int cclinit () ;
 int* ccllen ;
 int* cclmap ;
 int * ccltbl ;
 int dump_cclp (int ,int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int
ccl_set_union (int a, int b)
{
    int d, i;


    d = cclinit();


    for (i = 0; i < ccllen[a]; ++i)
  ccladd (d, ccltbl[cclmap[a] + i]);


    for (i = 0; i < ccllen[b]; ++i)
  ccladd (d, ccltbl[cclmap[b] + i]);


    if (0){
        fprintf(stderr, "ccl_set_union (%d + %d = %d", a, b, d);
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
