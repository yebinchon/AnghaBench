
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct validate_replace_src_data {int insn; int to; int from; } ;
typedef int rtx ;


 int validate_replace_rtx_1 (int *,int ,int ,int ) ;

__attribute__((used)) static void
validate_replace_src_1 (rtx *x, void *data)
{
  struct validate_replace_src_data *d
    = (struct validate_replace_src_data *) data;

  validate_replace_rtx_1 (x, d->from, d->to, d->insn);
}
