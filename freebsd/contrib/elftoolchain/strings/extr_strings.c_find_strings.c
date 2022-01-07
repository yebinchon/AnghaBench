
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uintmax_t ;
typedef int uint8_t ;
typedef scalar_t__ off_t ;
typedef int FILE ;


 scalar_t__ ENCODING_8BIT ;
 scalar_t__ PRINTABLE (long) ;



 int SEEK_SET ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ encoding ;
 scalar_t__ encoding_size ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int fseeko (int *,scalar_t__,int ) ;
 scalar_t__ getcharacter (int *,long*) ;
 int memset (char*,int ,int) ;
 int min_len ;
 int printf (char*,char const*) ;
 int putchar (char) ;
 int radix ;
 scalar_t__ show_filename ;
 scalar_t__ show_loc ;
 int stderr ;
 char* strerror (int ) ;

int
find_strings(const char *name, FILE *pfile, off_t offset, off_t size)
{
 off_t cur_off, start_off;
 char *obuf;
 long c;
 int i;

 if ((obuf = (char*)calloc(1, min_len + 1)) == ((void*)0)) {
  fprintf(stderr, "Unable to allocate memory: %s\n",
      strerror(errno));
  return (1);
 }

 (void)fseeko(pfile, offset, SEEK_SET);
 cur_off = offset;
 start_off = 0;
 for (;;) {
  if ((offset + size) && (cur_off >= offset + size))
   break;
  start_off = cur_off;
  memset(obuf, 0, min_len + 1);
  for(i = 0; i < min_len; i++) {
   if (getcharacter(pfile, &c) < 0)
    goto _exit1;
   if (PRINTABLE(c)) {
    obuf[i] = c;
    obuf[i + 1] = 0;
    cur_off += encoding_size;
   } else {
    if (encoding == ENCODING_8BIT &&
        (uint8_t)c > 127) {
     obuf[i] = c;
     obuf[i + 1] = 0;
     cur_off += encoding_size;
     continue;
    }
    cur_off += encoding_size;
    break;
   }
  }

  if (i >= min_len && ((cur_off <= offset + size) ||
      !(offset + size))) {
   if (show_filename)
    printf("%s: ", name);
   if (show_loc) {
    switch (radix) {
    case 130:
     printf("%7ju ", (uintmax_t)start_off);
     break;
    case 129:
     printf("%7jx ", (uintmax_t)start_off);
     break;
    case 128:
     printf("%7jo ", (uintmax_t)start_off);
     break;
    }
   }
   printf("%s", obuf);

   for (;;) {
    if ((offset + size) &&
        (cur_off >= offset + size))
     break;
    if (getcharacter(pfile, &c) < 0)
     break;
    cur_off += encoding_size;
    if (encoding == ENCODING_8BIT &&
        (uint8_t)c > 127) {
     putchar(c);
     continue;
    }
    if (!PRINTABLE(c))
     break;
    putchar(c);
   }
   putchar('\n');
  }
 }
_exit1:
 free(obuf);
 return (0);
}
