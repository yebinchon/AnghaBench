
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ima_template_entry {int template; int template_name; int digest; } ;
struct ima_template_data {int dummy; } ;
struct ima_queue_entry {struct ima_template_entry* entry; } ;


 int CONFIG_IMA_MEASURE_PCR_IDX ;
 int IMA_SHOW_ASCII ;
 int ima_print_digest (struct seq_file*,int ) ;
 int ima_template_show (struct seq_file*,struct ima_template_data*,int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int ima_ascii_measurements_show(struct seq_file *m, void *v)
{

 struct ima_queue_entry *qe = v;
 struct ima_template_entry *e;


 e = qe->entry;
 if (e == ((void*)0))
  return -1;


 seq_printf(m, "%2d ", CONFIG_IMA_MEASURE_PCR_IDX);


 ima_print_digest(m, e->digest);


 seq_printf(m, " %s ", e->template_name);


 ima_template_show(m, (struct ima_template_data *)&e->template,
     IMA_SHOW_ASCII);
 return 0;
}
