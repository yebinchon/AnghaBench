
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_ctime; } ;
struct perf_session {int fd; } ;
typedef int FILE ;


 char* ctime (int *) ;
 int fprintf (int *,char*,...) ;
 int fstat (int ,struct stat*) ;
 int perf_header__fprintf_info (struct perf_session*,int *,int) ;

void perf_session__fprintf_info(struct perf_session *session, FILE *fp,
    bool full)
{
 struct stat st;
 int ret;

 if (session == ((void*)0) || fp == ((void*)0))
  return;

 ret = fstat(session->fd, &st);
 if (ret == -1)
  return;

 fprintf(fp, "# ========\n");
 fprintf(fp, "# captured on: %s", ctime(&st.st_ctime));
 perf_header__fprintf_info(session, fp, full);
 fprintf(fp, "# ========\n#\n");
}
