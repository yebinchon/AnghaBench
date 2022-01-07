
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct stat {int st_mode; } ;


 int PERF_HTML_PATH ;
 int S_ISREG (int ) ;
 int mkpath (char*,char const*) ;
 int pr_err (char*,char const*) ;
 scalar_t__ stat (int ,struct stat*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,char const*) ;
 int strbuf_init (struct strbuf*,int ) ;
 char* system_path (int ) ;

__attribute__((used)) static int get_html_page_path(struct strbuf *page_path, const char *page)
{
 struct stat st;
 const char *html_path = system_path(PERF_HTML_PATH);


 if (stat(mkpath("%s/perf.html", html_path), &st)
     || !S_ISREG(st.st_mode)) {
  pr_err("'%s': not a documentation directory.", html_path);
  return -1;
 }

 strbuf_init(page_path, 0);
 strbuf_addf(page_path, "%s/%s.html", html_path, page);

 return 0;
}
