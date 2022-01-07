
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {char* string; int tag; } ;
typedef int buffer ;
typedef int FILE ;


 int ARRAY_SIZE (scalar_t__**) ;
 int EOF ;
 int SYM_NORMAL ;
 struct string_list* copy_node (struct string_list*) ;
 int exit (int) ;
 int fgetc (int *) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__** symbol_type_name ;
 int ungetc (int,int *) ;

__attribute__((used)) static struct string_list *read_node(FILE *f)
{
 char buffer[256];
 struct string_list node = {
  .string = buffer,
  .tag = SYM_NORMAL };
 int c;

 while ((c = fgetc(f)) != EOF) {
  if (c == ' ') {
   if (node.string == buffer)
    continue;
   break;
  } else if (c == '\n') {
   if (node.string == buffer)
    return ((void*)0);
   ungetc(c, f);
   break;
  }
  if (node.string >= buffer + sizeof(buffer) - 1) {
   fprintf(stderr, "Token too long\n");
   exit(1);
  }
  *node.string++ = c;
 }
 if (node.string == buffer)
  return ((void*)0);
 *node.string = 0;
 node.string = buffer;

 if (node.string[1] == '#') {
  int n;

  for (n = 0; n < ARRAY_SIZE(symbol_type_name); n++) {
   if (node.string[0] == symbol_type_name[n][0]) {
    node.tag = n;
    node.string += 2;
    return copy_node(&node);
   }
  }
  fprintf(stderr, "Unknown type %c\n", node.string[0]);
  exit(1);
 }
 return copy_node(&node);
}
