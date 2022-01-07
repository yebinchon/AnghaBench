
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COLS ;
 int atoi (char*) ;
 int endwin () ;
 char* getenv (char*) ;
 int initscr () ;

__attribute__((used)) static int get_cols ()
{
 char *env;
 int cols = 80;
 if ((env = getenv ("COLUMNS")) != ((void*)0))
  cols = atoi (env);

 return cols;
}
