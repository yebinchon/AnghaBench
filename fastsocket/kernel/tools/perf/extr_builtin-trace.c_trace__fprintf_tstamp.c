
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct trace {scalar_t__ base_time; } ;
typedef int FILE ;


 double NSEC_PER_MSEC ;
 size_t fprintf (int *,char*,double) ;

__attribute__((used)) static size_t trace__fprintf_tstamp(struct trace *trace, u64 tstamp, FILE *fp)
{
 double ts = (double)(tstamp - trace->base_time) / NSEC_PER_MSEC;

 return fprintf(fp, "%10.3f ", ts);
}
