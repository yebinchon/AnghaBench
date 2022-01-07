
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pattern_t ;


 char* errmsg ;
 int errno ;
 char* extract_pattern (char) ;
 int fprintf (int ,char*,char*) ;
 int free (int *) ;
 char* ibufp ;
 scalar_t__ malloc (int) ;
 scalar_t__ patlock ;
 int regcomp (int *,char*,int ) ;
 int regerror (int,int *,char*,int) ;
 int regfree (int *) ;
 int stderr ;
 char* strerror (int ) ;

pattern_t *
get_compiled_pattern(void)
{
 static pattern_t *expr = ((void*)0);
 static char error[1024];

 char *exprs;
 char delimiter;
 int n;

 if ((delimiter = *ibufp) == ' ') {
  errmsg = "invalid pattern delimiter";
  return ((void*)0);
 } else if (delimiter == '\n' || *++ibufp == '\n' || *ibufp == delimiter) {
  if (!expr)
   errmsg = "no previous pattern";
  return expr;
 } else if ((exprs = extract_pattern(delimiter)) == ((void*)0))
  return ((void*)0);

 if (expr && !patlock)
  regfree(expr);
 else if ((expr = (pattern_t *) malloc(sizeof(pattern_t))) == ((void*)0)) {
  fprintf(stderr, "%s\n", strerror(errno));
  errmsg = "out of memory";
  return ((void*)0);
 }
 patlock = 0;
 if ((n = regcomp(expr, exprs, 0))) {
  regerror(n, expr, error, sizeof error);
  errmsg = error;
  free(expr);
  return expr = ((void*)0);
 }
 return expr;
}
