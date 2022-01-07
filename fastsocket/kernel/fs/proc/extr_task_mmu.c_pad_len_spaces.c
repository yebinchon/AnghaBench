
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,char) ;

__attribute__((used)) static void pad_len_spaces(struct seq_file *m, int len)
{
 len = 25 + sizeof(void*) * 6 - len;
 if (len < 1)
  len = 1;
 seq_printf(m, "%*c", len, ' ');
}
