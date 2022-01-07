
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int filename ;
typedef int bf ;
typedef int FILE ;


 int BUFSIZ ;
 int PATH_MAX ;
 int atoi (char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,size_t) ;
 int pr_debug (char*,char*) ;
 int pr_warning (char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static pid_t perf_event__get_comm_tgid(pid_t pid, char *comm, size_t len)
{
 char filename[PATH_MAX];
 char bf[BUFSIZ];
 FILE *fp;
 size_t size = 0;
 pid_t tgid = -1;

 snprintf(filename, sizeof(filename), "/proc/%d/status", pid);

 fp = fopen(filename, "r");
 if (fp == ((void*)0)) {
  pr_debug("couldn't open %s\n", filename);
  return 0;
 }

 while (!comm[0] || (tgid < 0)) {
  if (fgets(bf, sizeof(bf), fp) == ((void*)0)) {
   pr_warning("couldn't get COMM and pgid, malformed %s\n",
       filename);
   break;
  }

  if (memcmp(bf, "Name:", 5) == 0) {
   char *name = bf + 5;
   while (*name && isspace(*name))
    ++name;
   size = strlen(name) - 1;
   if (size >= len)
    size = len - 1;
   memcpy(comm, name, size);
   comm[size] = '\0';

  } else if (memcmp(bf, "Tgid:", 5) == 0) {
   char *tgids = bf + 5;
   while (*tgids && isspace(*tgids))
    ++tgids;
   tgid = atoi(tgids);
  }
 }

 fclose(fp);

 return tgid;
}
