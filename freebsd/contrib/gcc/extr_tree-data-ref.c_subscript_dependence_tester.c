
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data_dependence_relation {int dummy; } ;
struct TYPE_2__ {int num_dependence_dependent; } ;


 int DDR_A (struct data_dependence_relation*) ;
 int DDR_B (struct data_dependence_relation*) ;
 int TDF_DETAILS ;
 int build_classic_dir_vector (struct data_dependence_relation*) ;
 scalar_t__ build_classic_dist_vector (struct data_dependence_relation*) ;
 int compute_subscript_distance (struct data_dependence_relation*) ;
 TYPE_1__ dependence_stats ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 scalar_t__ subscript_dependence_tester_1 (struct data_dependence_relation*,int ,int ) ;

__attribute__((used)) static void
subscript_dependence_tester (struct data_dependence_relation *ddr)
{

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "(subscript_dependence_tester \n");

  if (subscript_dependence_tester_1 (ddr, DDR_A (ddr), DDR_B (ddr)))
    dependence_stats.num_dependence_dependent++;

  compute_subscript_distance (ddr);
  if (build_classic_dist_vector (ddr))
    build_classic_dir_vector (ddr);

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, ")\n");
}
