
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXDEPTH ;
 int depth ;
 int error (char*) ;
 int linenum ;
 int * stifline ;

__attribute__((used)) static void
nest(void)
{
 depth += 1;
 if (depth >= MAXDEPTH)
  error("Too many levels of nesting");
 stifline[depth] = linenum;
}
