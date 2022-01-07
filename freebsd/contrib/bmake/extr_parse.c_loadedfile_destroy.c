
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loadedfile {scalar_t__ maplen; struct loadedfile* buf; } ;


 int free (struct loadedfile*) ;
 int munmap (struct loadedfile*,scalar_t__) ;

__attribute__((used)) static void
loadedfile_destroy(struct loadedfile *lf)
{
 if (lf->buf != ((void*)0)) {
  if (lf->maplen > 0) {



  } else {
   free(lf->buf);
  }
 }
 free(lf);
}
