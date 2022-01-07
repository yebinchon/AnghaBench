
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct sec_add {char* name; int size; int * content; } ;
struct elfcopy {int flags; int v_sadd; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int SEC_ADD ;
 int STAILQ_INSERT_TAIL (int *,struct sec_add*,int ) ;
 int err (int ,char*,...) ;
 int errx (int ,char*) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (int *,int,int,int *) ;
 void* malloc (int) ;
 int sadd_list ;
 int stat (char const*,struct stat*) ;
 char* strchr (char const*,char) ;
 int strncpy (char*,char const*,int) ;

void
add_section(struct elfcopy *ecp, const char *arg)
{
 struct sec_add *sa;
 struct stat sb;
 const char *s, *fn;
 FILE *fp;
 int len;

 if ((s = strchr(arg, '=')) == ((void*)0))
  errx(EXIT_FAILURE,
      "illegal format for --add-section option");
 if ((sa = malloc(sizeof(*sa))) == ((void*)0))
  err(EXIT_FAILURE, "malloc failed");

 len = s - arg;
 if ((sa->name = malloc(len + 1)) == ((void*)0))
  err(EXIT_FAILURE, "malloc failed");
 strncpy(sa->name, arg, len);
 sa->name[len] = '\0';

 fn = s + 1;
 if (stat(fn, &sb) == -1)
  err(EXIT_FAILURE, "stat failed");
 sa->size = sb.st_size;
 if (sa->size > 0) {
  if ((sa->content = malloc(sa->size)) == ((void*)0))
   err(EXIT_FAILURE, "malloc failed");
  if ((fp = fopen(fn, "r")) == ((void*)0))
   err(EXIT_FAILURE, "can not open %s", fn);
  if (fread(sa->content, 1, sa->size, fp) == 0 ||
      ferror(fp))
   err(EXIT_FAILURE, "fread failed");
  fclose(fp);
 } else
  sa->content = ((void*)0);

 STAILQ_INSERT_TAIL(&ecp->v_sadd, sa, sadd_list);
 ecp->flags |= SEC_ADD;
}
