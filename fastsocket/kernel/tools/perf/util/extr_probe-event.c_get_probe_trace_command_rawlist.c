
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;
typedef int FILE ;


 int MAX_CMDLEN ;
 int dup (int) ;
 int fclose (int *) ;
 int * fdopen (int ,char*) ;
 int feof (int *) ;
 char* fgets (char*,int,int *) ;
 int pr_debug (char*,int ) ;
 int strerror (int) ;
 int strlen (char*) ;
 int strlist__add (struct strlist*,char*) ;
 int strlist__delete (struct strlist*) ;
 struct strlist* strlist__new (int,int *) ;

__attribute__((used)) static struct strlist *get_probe_trace_command_rawlist(int fd)
{
 int ret, idx;
 FILE *fp;
 char buf[MAX_CMDLEN];
 char *p;
 struct strlist *sl;

 sl = strlist__new(1, ((void*)0));

 fp = fdopen(dup(fd), "r");
 while (!feof(fp)) {
  p = fgets(buf, MAX_CMDLEN, fp);
  if (!p)
   break;

  idx = strlen(p) - 1;
  if (p[idx] == '\n')
   p[idx] = '\0';
  ret = strlist__add(sl, buf);
  if (ret < 0) {
   pr_debug("strlist__add failed: %s\n", strerror(-ret));
   strlist__delete(sl);
   return ((void*)0);
  }
 }
 fclose(fp);

 return sl;
}
