
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int free (char const**) ;
 scalar_t__ isspace (char) ;
 char** malloc (int) ;
 char** realloc (char const**,int) ;

int split_cmdline(char *cmdline, const char ***argv)
{
 int src, dst, count = 0, size = 16;
 char quoted = 0;

 *argv = malloc(sizeof(char*) * size);


 (*argv)[count++] = cmdline;
 for (src = dst = 0; cmdline[src];) {
  char c = cmdline[src];
  if (!quoted && isspace(c)) {
   cmdline[dst++] = 0;
   while (cmdline[++src]
     && isspace(cmdline[src]))
    ;
   if (count >= size) {
    size += 16;
    *argv = realloc(*argv, sizeof(char*) * size);
   }
   (*argv)[count++] = cmdline + dst;
  } else if (!quoted && (c == '\'' || c == '"')) {
   quoted = c;
   src++;
  } else if (c == quoted) {
   quoted = 0;
   src++;
  } else {
   if (c == '\\' && quoted != '\'') {
    src++;
    c = cmdline[src];
    if (!c) {
     free(*argv);
     *argv = ((void*)0);
     return error("cmdline ends with \\");
    }
   }
   cmdline[dst++] = c;
   src++;
  }
 }

 cmdline[dst] = 0;

 if (quoted) {
  free(*argv);
  *argv = ((void*)0);
  return error("unclosed quote");
 }

 return count;
}
