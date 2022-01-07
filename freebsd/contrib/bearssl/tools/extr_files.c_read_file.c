
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bvector ;
typedef int FILE ;


 int VEC_ADDMANY (int ,unsigned char*,size_t) ;
 int VEC_CLEAR (int ) ;
 int VEC_INIT ;
 size_t VEC_LEN (int ) ;
 unsigned char* VEC_TOARRAY (int ) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 size_t fread (unsigned char*,int,int,int *) ;
 int stderr ;

unsigned char *
read_file(const char *fname, size_t *len)
{
 bvector vbuf = VEC_INIT;
 FILE *f;

 *len = 0;
 f = fopen(fname, "rb");
 if (f == ((void*)0)) {
  fprintf(stderr,
   "ERROR: could not open file '%s' for reading\n", fname);
  return ((void*)0);
 }
 for (;;) {
  unsigned char tmp[1024];
  size_t rlen;

  rlen = fread(tmp, 1, sizeof tmp, f);
  if (rlen == 0) {
   unsigned char *buf;

   if (ferror(f)) {
    fprintf(stderr,
     "ERROR: read error on file '%s'\n",
     fname);
    fclose(f);
    return ((void*)0);
   }
   buf = VEC_TOARRAY(vbuf);
   *len = VEC_LEN(vbuf);
   VEC_CLEAR(vbuf);
   fclose(f);
   return buf;
  }
  VEC_ADDMANY(vbuf, tmp, rlen);
 }
}
