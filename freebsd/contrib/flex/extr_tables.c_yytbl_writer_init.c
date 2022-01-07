
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_writer {scalar_t__ total_written; int * out; } ;
typedef int FILE ;



int yytbl_writer_init (struct yytbl_writer *wr, FILE * out)
{
 wr->out = out;
 wr->total_written = 0;
 return 0;
}
