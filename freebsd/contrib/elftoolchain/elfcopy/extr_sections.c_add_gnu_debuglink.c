
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct sec_add {int size; int* content; int * name; } ;
struct elfcopy {scalar_t__ oed; int flags; int v_sadd; int * debuglink; } ;
typedef int FILE ;


 scalar_t__ ELFDATA2LSB ;
 int EXIT_FAILURE ;
 int SEC_ADD ;
 int STAILQ_INSERT_TAIL (int *,struct sec_add*,int ) ;
 char* basename (int *) ;
 int calc_crc32 (char*,int,int) ;
 int* calloc (int,int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,int *) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int *,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;
 int free (char*) ;
 void* malloc (int) ;
 int roundup (scalar_t__,int) ;
 int sadd_list ;
 int stat (int *,struct stat*) ;
 int * strdup (char*) ;
 scalar_t__ strlen (char*) ;
 int strncpy (int*,char*,scalar_t__) ;

__attribute__((used)) static void
add_gnu_debuglink(struct elfcopy *ecp)
{
 struct sec_add *sa;
 struct stat sb;
 FILE *fp;
 char *fnbase, *buf;
 int crc_off;
 int crc;

 if (ecp->debuglink == ((void*)0))
  return;


 if ((sa = malloc(sizeof(*sa))) == ((void*)0))
  err(EXIT_FAILURE, "malloc failed");
 if ((sa->name = strdup(".gnu_debuglink")) == ((void*)0))
  err(EXIT_FAILURE, "strdup failed");
 if (stat(ecp->debuglink, &sb) == -1)
  err(EXIT_FAILURE, "stat failed");
 if (sb.st_size == 0)
  errx(EXIT_FAILURE, "empty debug link target %s",
      ecp->debuglink);
 if ((buf = malloc(sb.st_size)) == ((void*)0))
  err(EXIT_FAILURE, "malloc failed");
 if ((fp = fopen(ecp->debuglink, "r")) == ((void*)0))
  err(EXIT_FAILURE, "can not open %s", ecp->debuglink);
 if (fread(buf, 1, sb.st_size, fp) == 0 ||
     ferror(fp))
  err(EXIT_FAILURE, "fread failed");
 fclose(fp);


 crc = calc_crc32(buf, sb.st_size, 0xFFFFFFFF);
 free(buf);


 if ((fnbase = basename(ecp->debuglink)) == ((void*)0))
  err(EXIT_FAILURE, "basename failed");
 crc_off = roundup(strlen(fnbase) + 1, 4);
 sa->size = crc_off + 4;


 if ((sa->content = calloc(1, sa->size)) == ((void*)0))
  err(EXIT_FAILURE, "malloc failed");
 strncpy(sa->content, fnbase, strlen(fnbase));
 if (ecp->oed == ELFDATA2LSB) {
  sa->content[crc_off] = crc & 0xFF;
  sa->content[crc_off + 1] = (crc >> 8) & 0xFF;
  sa->content[crc_off + 2] = (crc >> 16) & 0xFF;
  sa->content[crc_off + 3] = crc >> 24;
 } else {
  sa->content[crc_off] = crc >> 24;
  sa->content[crc_off + 1] = (crc >> 16) & 0xFF;
  sa->content[crc_off + 2] = (crc >> 8) & 0xFF;
  sa->content[crc_off + 3] = crc & 0xFF;
 }

 STAILQ_INSERT_TAIL(&ecp->v_sadd, sa, sadd_list);
 ecp->flags |= SEC_ADD;
}
