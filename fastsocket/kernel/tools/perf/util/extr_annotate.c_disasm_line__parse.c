
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ isspace (char) ;
 char* strdup (char*) ;

__attribute__((used)) static int disasm_line__parse(char *line, char **namep, char **rawp)
{
 char *name = line, tmp;

 while (isspace(name[0]))
  ++name;

 if (name[0] == '\0')
  return -1;

 *rawp = name + 1;

 while ((*rawp)[0] != '\0' && !isspace((*rawp)[0]))
  ++*rawp;

 tmp = (*rawp)[0];
 (*rawp)[0] = '\0';
 *namep = strdup(name);

 if (*namep == ((void*)0))
  goto out_free_name;

 (*rawp)[0] = tmp;

 if ((*rawp)[0] != '\0') {
  (*rawp)++;
  while (isspace((*rawp)[0]))
   ++(*rawp);
 }

 return 0;

out_free_name:
 free(*namep);
 *namep = ((void*)0);
 return -1;
}
