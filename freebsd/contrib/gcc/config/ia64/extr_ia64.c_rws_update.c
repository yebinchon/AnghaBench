
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_write_state {int write_count; int first_pred; int written_by_or; int written_by_and; int written_by_fp; } ;
struct reg_flags {int is_or; int is_and; int is_fp; } ;



__attribute__((used)) static void
rws_update (struct reg_write_state *rws, int regno, struct reg_flags flags, int pred)
{
  if (pred)
    rws[regno].write_count++;
  else
    rws[regno].write_count = 2;
  rws[regno].written_by_fp |= flags.is_fp;

  rws[regno].written_by_and = flags.is_and;
  rws[regno].written_by_or = flags.is_or;
  rws[regno].first_pred = pred;
}
