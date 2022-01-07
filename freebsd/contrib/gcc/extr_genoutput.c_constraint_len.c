
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTRAINT_LEN (char const,char const*) ;
 int DEFAULT_CONSTRAINT_LEN (char const,char const*) ;
 int gcc_assert (int) ;

__attribute__((used)) static int
constraint_len (const char *p, int genoutput_default_constraint_len)
{


  gcc_assert (DEFAULT_CONSTRAINT_LEN (*p, p) == 1);
  return CONSTRAINT_LEN (*p, p);



}
