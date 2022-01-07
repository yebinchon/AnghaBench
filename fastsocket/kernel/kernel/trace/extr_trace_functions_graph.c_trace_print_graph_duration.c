
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 unsigned long do_div (unsigned long long,int) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int sprintf (char*,char*,unsigned long) ;
 int strlen (char*) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

enum print_line_t
trace_print_graph_duration(unsigned long long duration, struct trace_seq *s)
{
 unsigned long nsecs_rem = do_div(duration, 1000);

 char msecs_str[21];
 char nsecs_str[5];
 int ret, len;
 int i;

 sprintf(msecs_str, "%lu", (unsigned long) duration);


 ret = trace_seq_printf(s, "%s", msecs_str);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 len = strlen(msecs_str);


 if (len < 7) {
  snprintf(nsecs_str, 8 - len, "%03lu", nsecs_rem);
  ret = trace_seq_printf(s, ".%s", nsecs_str);
  if (!ret)
   return TRACE_TYPE_PARTIAL_LINE;
  len += strlen(nsecs_str);
 }

 ret = trace_seq_printf(s, " us ");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 for (i = len; i < 7; i++) {
  ret = trace_seq_printf(s, " ");
  if (!ret)
   return TRACE_TYPE_PARTIAL_LINE;
 }
 return TRACE_TYPE_HANDLED;
}
