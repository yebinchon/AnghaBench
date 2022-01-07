
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;


 int Buf_AddByte (int *,char) ;
 int Buf_AddBytes (int *,int ,char*) ;
 scalar_t__ DEBUG (int ) ;
 int FOR ;
 TYPE_1__* accumFor ;
 int debug_file ;
 int forLevel ;
 int fprintf (int ,char*,int) ;
 scalar_t__ isspace (unsigned char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
For_Accum(char *line)
{
    char *ptr = line;

    if (*ptr == '.') {

 for (ptr++; *ptr && isspace((unsigned char) *ptr); ptr++)
     continue;

 if (strncmp(ptr, "endfor", 6) == 0 &&
  (isspace((unsigned char) ptr[6]) || !ptr[6])) {
     if (DEBUG(FOR))
  (void)fprintf(debug_file, "For: end for %d\n", forLevel);
     if (--forLevel <= 0)
  return 0;
 } else if (strncmp(ptr, "for", 3) == 0 &&
   isspace((unsigned char) ptr[3])) {
     forLevel++;
     if (DEBUG(FOR))
  (void)fprintf(debug_file, "For: new loop %d\n", forLevel);
 }
    }

    Buf_AddBytes(&accumFor->buf, strlen(line), line);
    Buf_AddByte(&accumFor->buf, '\n');
    return 1;
}
