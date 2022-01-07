
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_parse_state {int lasterr_pos; size_t lasterr; } ;
struct event_filter {int dummy; } ;


 int GFP_TEMPORARY ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int append_filter_string (struct event_filter*,char*) ;
 char** err_text ;
 int free_page (unsigned long) ;
 int memset (char*,char,int) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void append_filter_err(struct filter_parse_state *ps,
         struct event_filter *filter)
{
 int pos = ps->lasterr_pos;
 char *buf, *pbuf;

 buf = (char *)__get_free_page(GFP_TEMPORARY);
 if (!buf)
  return;

 append_filter_string(filter, "\n");
 memset(buf, ' ', PAGE_SIZE);
 if (pos > PAGE_SIZE - 128)
  pos = 0;
 buf[pos] = '^';
 pbuf = &buf[pos] + 1;

 sprintf(pbuf, "\nparse_error: %s\n", err_text[ps->lasterr]);
 append_filter_string(filter, buf);
 free_page((unsigned long) buf);
}
