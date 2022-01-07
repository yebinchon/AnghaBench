
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct authuser {char* password; int * host; int * login; } ;
typedef int line ;
typedef int FILE ;


 char* DP ;
 int EX_CONFIG ;
 int EX_NOINPUT ;
 int EX_OSERR ;
 int SLIST_INSERT_HEAD (int *,struct authuser*,int ) ;
 int authusers ;
 struct authuser* calloc (int,int) ;
 int chomp (char*) ;
 int errlog (int ,char*,...) ;
 int errlogx (int ,char*,char const*,int) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int next ;
 char* strdup (char*) ;
 void* strsep (char**,char*) ;

void
parse_authfile(const char *path)
{
 char line[2048];
 struct authuser *au;
 FILE *a;
 char *data;
 int lineno = 0;

 a = fopen(path, "r");
 if (a == ((void*)0)) {
  errlog(EX_NOINPUT, "can not open auth file `%s'", path);

 }

 while (!feof(a)) {
  if (fgets(line, sizeof(line), a) == ((void*)0))
   break;
  lineno++;

  chomp(line);


  if (*line == '#')
   continue;

  if (*line == 0)
   continue;

  au = calloc(1, sizeof(*au));
  if (au == ((void*)0))
   errlog(EX_OSERR, "calloc()");

  data = strdup(line);
  au->login = strsep(&data, "|");
  au->host = strsep(&data, DP);
  au->password = data;

  if (au->login == ((void*)0) ||
      au->host == ((void*)0) ||
      au->password == ((void*)0)) {
   errlogx(EX_CONFIG, "syntax error in authfile %s:%d", path, lineno);

  }

  SLIST_INSERT_HEAD(&authusers, au, next);
 }

 fclose(a);
}
