
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct buffer {int pos; int p; } ;
typedef int FILE ;


 char* NOFAIL (int ) ;
 int exit (int) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int ,int *) ;
 int free (char*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int fwrite (int ,int,int ,int *) ;
 int malloc (int ) ;
 scalar_t__ memcmp (char*,int ,int ) ;
 int perror (char const*) ;

__attribute__((used)) static void write_if_changed(struct buffer *b, const char *fname)
{
 char *tmp;
 FILE *file;
 struct stat st;

 file = fopen(fname, "r");
 if (!file)
  goto write;

 if (fstat(fileno(file), &st) < 0)
  goto close_write;

 if (st.st_size != b->pos)
  goto close_write;

 tmp = NOFAIL(malloc(b->pos));
 if (fread(tmp, 1, b->pos, file) != b->pos)
  goto free_write;

 if (memcmp(tmp, b->p, b->pos) != 0)
  goto free_write;

 free(tmp);
 fclose(file);
 return;

 free_write:
 free(tmp);
 close_write:
 fclose(file);
 write:
 file = fopen(fname, "w");
 if (!file) {
  perror(fname);
  exit(1);
 }
 if (fwrite(b->p, 1, b->pos, file) != b->pos) {
  perror(fname);
  exit(1);
 }
 fclose(file);
}
