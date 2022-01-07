
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int type; int blocks; } ;
typedef int FILE ;


 int Linux ;
 int MAX_DEV_NAME ;
 size_t MAX_PARTS ;
 int MsDos ;
 int Swap ;
 int atoi (char*) ;
 int error (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int get_line (char*,int,int *) ;
 scalar_t__ isspace (unsigned char) ;
 int num_linux ;
 int num_msdos ;
 size_t num_partition ;
 int num_swap ;
 TYPE_1__* partitions ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ strstr (char*,char*) ;
 int system (char*) ;
 int unlink (char*) ;

__attribute__((used)) static void
read_partitions(void)
{
    FILE *f;
    char line[200];
    int length;

    int ret = system("fdisk -l 2>/dev/null 1>/tmp/fdisk.output");
    if ((ret >> 8) != 0) {
 error("fdisk didn't run");
    }
    if ((f = fopen("/tmp/fdisk.output", "r")) == ((void*)0))



 error("cannot read fdisk output");

    while (num_partition <= MAX_PARTS
    && (length = get_line(line, 200, f)) >= 0) {
 if (strncmp(line, "/dev/", 5) == 0) {
     int n = 0;
     char *s = line + 5;
     char *t = partitions[num_partition].name;
     strcpy(t, "/dev/");
     t += 5;
     while (n < MAX_DEV_NAME && *s != '\0'
     && !isspace((unsigned char) *s)) {
  *t++ = *s++;
  n++;
     }
     *t = '\0';

     t = line + 37;
     while (isspace((unsigned char) *t))
  t++;
     partitions[num_partition].blocks = atoi(t);
     if (strstr(line, "Linux native")) {
  partitions[num_partition].type = Linux;
  num_partition++;
  num_linux++;
     } else if (strstr(line, "Linux swap")) {
  partitions[num_partition].type = Swap;
  num_partition++;
  num_swap++;
     } else if (strstr(line, "DOS")) {
  partitions[num_partition].type = MsDos;
  num_partition++;
  num_msdos++;
     }
 }
    }
    fclose(f);

    unlink("/tmp/fdisk.output");

}
