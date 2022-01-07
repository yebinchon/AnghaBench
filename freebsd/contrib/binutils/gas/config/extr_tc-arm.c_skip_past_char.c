
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 int SUCCESS ;

__attribute__((used)) static inline int
skip_past_char (char ** str, char c)
{
  if (**str == c)
    {
      (*str)++;
      return SUCCESS;
    }
  else
    return FAIL;
}
