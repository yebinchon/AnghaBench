
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int period; } ;
struct hist_entry {int sorted_chain; TYPE_1__ stat; } ;
struct TYPE_4__ {int mode; } ;
typedef int FILE ;






 size_t callchain__fprintf_flat (int *,int *,int ) ;
 size_t callchain__fprintf_graph (int *,int *,int ,int) ;
 TYPE_2__ callchain_param ;
 int pr_err (char*) ;

__attribute__((used)) static size_t hist_entry_callchain__fprintf(struct hist_entry *he,
         u64 total_samples, int left_margin,
         FILE *fp)
{
 switch (callchain_param.mode) {
 case 129:
  return callchain__fprintf_graph(fp, &he->sorted_chain, he->stat.period,
      left_margin);
  break;
 case 130:
  return callchain__fprintf_graph(fp, &he->sorted_chain, total_samples,
      left_margin);
  break;
 case 131:
  return callchain__fprintf_flat(fp, &he->sorted_chain, total_samples);
  break;
 case 128:
  break;
 default:
  pr_err("Bad callchain mode\n");
 }

 return 0;
}
