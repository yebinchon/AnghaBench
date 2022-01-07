
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TNMSZ ;
 int TPFSZ ;

__attribute__((used)) static char *
name_split(char *name, int len)
{
 char *start;





 if (len <= TNMSZ)
  return(name);
 if (len > TPFSZ + TNMSZ)
  return(((void*)0));







 start = name + len - TNMSZ;
 while ((*start != '\0') && (*start != '/'))
  ++start;





 if (*start == '\0')
  return(((void*)0));
 len = start - name;







 if ((len > TPFSZ) || (len == 0))
  return(((void*)0));




 return(start);
}
