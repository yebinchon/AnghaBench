
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct display_info {char type; int size; scalar_t__ verbose; } ;


 int cpu_to_fdt32 (int) ;
 int fprintf (int ,char*,...) ;
 int memcpy (char*,char*,int) ;
 int sscanf (char*,char*,int*) ;
 int stderr ;
 int strlen (char*) ;
 char* xrealloc (char*,int) ;

__attribute__((used)) static int encode_value(struct display_info *disp, char **arg, int arg_count,
   char **valuep, int *value_len)
{
 char *value = ((void*)0);
 int value_size = 0;
 char *ptr;
 int len;
 int ival;
 int upto;
 char fmt[3];

 upto = 0;

 if (disp->verbose)
  fprintf(stderr, "Decoding value:\n");

 fmt[0] = '%';
 fmt[1] = disp->type ? disp->type : 'd';
 fmt[2] = '\0';
 for (; arg_count > 0; arg++, arg_count--, upto += len) {

  if (disp->type == 's')
   len = strlen(*arg) + 1;
  else
   len = disp->size == -1 ? 4 : disp->size;


  if (upto + len > value_size) {
   value_size = (upto + len) + 500;
   value = xrealloc(value, value_size);
  }

  ptr = value + upto;
  if (disp->type == 's') {
   memcpy(ptr, *arg, len);
   if (disp->verbose)
    fprintf(stderr, "\tstring: '%s'\n", ptr);
  } else {
   int *iptr = (int *)ptr;
   sscanf(*arg, fmt, &ival);
   if (len == 4)
    *iptr = cpu_to_fdt32(ival);
   else
    *ptr = (uint8_t)ival;
   if (disp->verbose) {
    fprintf(stderr, "\t%s: %d\n",
     disp->size == 1 ? "byte" :
     disp->size == 2 ? "short" : "int",
     ival);
   }
  }
 }
 *value_len = upto;
 *valuep = value;
 if (disp->verbose)
  fprintf(stderr, "Value size %d\n", upto);
 return 0;
}
