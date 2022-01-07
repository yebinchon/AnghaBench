
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int GETLINE_FILE_CORRUPT ;
 int GETLINE_OUT_OF_MEM ;
 scalar_t__ ferror (int *) ;
 char* fgetln (int *,size_t*) ;
 int get_line_error ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;

char *
get_line(FILE *f)
{
 char *name, *temp;
 size_t len;

 name = fgetln(f, &len);
 if (!name) {
  get_line_error = ferror(f) ? GETLINE_FILE_CORRUPT : 0;
  return(0);
 }
 if (name[len-1] != '\n')
  len++;
 temp = malloc(len);
 if (!temp) {
  get_line_error = GETLINE_OUT_OF_MEM;
  return(0);
 }
 memcpy(temp, name, len-1);
 temp[len-1] = 0;
 return(temp);
}
