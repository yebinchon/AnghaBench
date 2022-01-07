
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 char* cmd_to_page (char const*) ;
 scalar_t__ get_html_page_path (struct strbuf*,char const*) ;
 int open_html (int ) ;

__attribute__((used)) static int show_html_page(const char *perf_cmd)
{
 const char *page = cmd_to_page(perf_cmd);
 struct strbuf page_path;

 if (get_html_page_path(&page_path, page) != 0)
  return -1;

 open_html(page_path.buf);

 return 0;
}
