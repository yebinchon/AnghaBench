
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t timevar_id_t ;
struct timevar_time_def {double const user; double const sys; double const wall; int ggc_mem; } ;
struct timevar_def {char* name; struct timevar_time_def elapsed; int used; } ;
struct TYPE_4__ {TYPE_1__* timevar; } ;
struct TYPE_3__ {int elapsed; } ;
typedef int FILE ;


 int GGC_MEM_BOUND ;
 scalar_t__ TIMEVAR_LAST ;
 size_t TV_TOTAL ;
 int _ (char*) ;
 int fprintf (int *,char*,...) ;
 int fputs (int ,int *) ;
 int get_time (struct timevar_time_def*) ;
 int putc (char,int *) ;
 TYPE_2__* stack ;
 struct timevar_time_def start_time ;
 int * stderr ;
 int timevar_accumulate (int *,struct timevar_time_def*,struct timevar_time_def*) ;
 int timevar_enable ;
 struct timevar_def* timevars ;

void
timevar_print (FILE *fp)
{
}
