
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
typedef int ssize_t ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int line_list__add_line (struct list_head*,int) ;
 int pr_debug (char*,char const*) ;
 int pr_warning (char*,char const*,int ) ;
 int strerror (int) ;
 scalar_t__ strlazymatch (char*,char const*) ;

__attribute__((used)) static int find_lazy_match_lines(struct list_head *head,
     const char *fname, const char *pat)
{
 FILE *fp;
 char *line = ((void*)0);
 size_t line_len;
 ssize_t len;
 int count = 0, linenum = 1;

 fp = fopen(fname, "r");
 if (!fp) {
  pr_warning("Failed to open %s: %s\n", fname, strerror(errno));
  return -errno;
 }

 while ((len = getline(&line, &line_len, fp)) > 0) {

  if (line[len - 1] == '\n')
   line[len - 1] = '\0';

  if (strlazymatch(line, pat)) {
   line_list__add_line(head, linenum);
   count++;
  }
  linenum++;
 }

 if (ferror(fp))
  count = -errno;
 free(line);
 fclose(fp);

 if (count == 0)
  pr_debug("No matched lines found in %s.\n", fname);
 return count;
}
