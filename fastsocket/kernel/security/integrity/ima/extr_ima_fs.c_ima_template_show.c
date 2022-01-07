
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ima_template_data {int* digest; int* file_name; } ;
typedef enum ima_show_type { ____Placeholder_ima_show_type } ima_show_type ;


 int IMA_DIGEST_SIZE ;


 int ima_print_digest (struct seq_file*,int*) ;
 int ima_putc (struct seq_file*,int*,int) ;
 int seq_printf (struct seq_file*,char*,int*) ;
 int strlen (int*) ;

void ima_template_show(struct seq_file *m, void *e, enum ima_show_type show)
{
 struct ima_template_data *entry = e;
 int namelen;

 switch (show) {
 case 129:
  ima_print_digest(m, entry->digest);
  seq_printf(m, " %s\n", entry->file_name);
  break;
 case 128:
  ima_putc(m, entry->digest, IMA_DIGEST_SIZE);

  namelen = strlen(entry->file_name);
  ima_putc(m, &namelen, sizeof namelen);
  ima_putc(m, entry->file_name, namelen);
 default:
  break;
 }
}
