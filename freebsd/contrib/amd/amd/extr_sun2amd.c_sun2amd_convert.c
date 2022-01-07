
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line_buff ;
typedef int FILE ;


 int INFO_MAX_LINE_LEN ;
 int XLOG_ERROR ;
 int errno ;
 int file_read_line (char*,int,int *) ;
 scalar_t__ fprintf (int *,char*,char*,char*) ;
 scalar_t__ isspace (unsigned char) ;
 int memset (char*,int ,int) ;
 int plog (int ,char*,int) ;
 char* strchr (char*,char) ;
 int strerror (int ) ;
 char* sun_entry2amd (char*,char*) ;

__attribute__((used)) static int
sun2amd_convert(FILE *sun_in, FILE *amd_out)
{
  char line_buff[INFO_MAX_LINE_LEN], *tmp, *key, *entry;
  int pos, line = 0, retval = 1;


  memset(line_buff, 0, sizeof(line_buff));


  while ((pos = file_read_line(line_buff, sizeof(line_buff), sun_in))) {
    line++;
    line_buff[pos - 1] = '\0';


    if ((tmp = strchr(line_buff, '#')) != ((void*)0)) {
      *tmp = '\0';
    }


    key = line_buff;
    while (*key != '\0' && isspace((unsigned char)*key)) {
      key++;
    }


    if (*key == '\0') {
      continue;
    }


    tmp = key;
    while (*tmp != '\0' && isspace((unsigned char)*tmp) == 0) {
      tmp++;
    }
    if (*tmp == '\0') {
      plog(XLOG_ERROR, "map line %d has no entry", line);
      goto err;
    }
    *tmp++ = '\0';
    if (*tmp == '\0') {
      plog(XLOG_ERROR, "map line %d has no entry", line);
      goto err;
    }
    entry = tmp;


    if ((tmp = sun_entry2amd(key, entry)) == ((void*)0)) {
      plog(XLOG_ERROR, "parse error on line %d", line);
      goto err;
    }

    if (fprintf(amd_out, "%s %s\n", key, tmp) < 0) {
      plog(XLOG_ERROR, "can't write to output stream: %s", strerror(errno));
      goto err;
    }


    memset(line_buff, 0, sizeof(line_buff));
  }


  retval = 0;

 err:
  return retval;
}
