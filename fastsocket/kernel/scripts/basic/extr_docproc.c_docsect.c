
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DOCBOOK ;
 char* FUNCTION ;
 char* KERNELDOC ;
 int exec_kernel_doc (char**) ;

__attribute__((used)) static void docsect(char *filename, char *line)
{
 char *vec[6];
 char *s;

 for (s = line; *s; s++)
  if (*s == '\n')
   *s = '\0';

 vec[0] = KERNELDOC;
 vec[1] = DOCBOOK;
 vec[2] = FUNCTION;
 vec[3] = line;
 vec[4] = filename;
 vec[5] = ((void*)0);
 exec_kernel_doc(vec);
}
