
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct kallsym_iter* private; } ;
struct kallsym_iter {int * name; int type; scalar_t__ value; scalar_t__* module_name; scalar_t__ exported; } ;


 int seq_printf (struct seq_file*,char*,void*,char,int *,...) ;
 char tolower (int ) ;
 char toupper (int ) ;

__attribute__((used)) static int s_show(struct seq_file *m, void *p)
{
 struct kallsym_iter *iter = m->private;


 if (!iter->name[0])
  return 0;

 if (iter->module_name[0]) {
  char type;





  type = iter->exported ? toupper(iter->type) :
     tolower(iter->type);
  seq_printf(m, "%pK %c %s\t[%s]\n", (void *)iter->value,
      type, iter->name, iter->module_name);
 } else
  seq_printf(m, "%pK %c %s\n", (void *)iter->value,
      iter->type, iter->name);
 return 0;
}
