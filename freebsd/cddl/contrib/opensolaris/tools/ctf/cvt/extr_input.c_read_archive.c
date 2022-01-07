
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int read_cb_f ;
struct TYPE_3__ {char* ar_name; } ;
typedef int Elf_Cmd ;
typedef TYPE_1__ Elf_Arhdr ;
typedef int Elf ;


 int ELF_C_READ ;


 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 TYPE_1__* elf_getarhdr (int *) ;
 int elf_kind (int *) ;
 int elf_next (int *) ;
 int elfterminate (char*,char*,int) ;
 int free (char*) ;
 int read_file (int *,char*,char*,int *,void*,int) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 int strlen (char*) ;
 int terminate (char*,char*,int) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static int
read_archive(int fd, Elf *elf, char *file, char *label, read_cb_f *func,
    void *arg, int require_ctf)
{
 Elf *melf;
 Elf_Cmd cmd = ELF_C_READ;
 Elf_Arhdr *arh;
 int secnum = 1, found = 0;

 while ((melf = elf_begin(fd, cmd, elf)) != ((void*)0)) {
  int rc = 0;

  if ((arh = elf_getarhdr(melf)) == ((void*)0)) {
   elfterminate(file, "Can't get archive header for "
       "member %d", secnum);
  }


  if (*arh->ar_name != '/') {
   size_t memlen = strlen(file) + 1 +
       strlen(arh->ar_name) + 1 + 1;
   char *memname = xmalloc(memlen);

   snprintf(memname, memlen, "%s(%s)", file, arh->ar_name);

   switch (elf_kind(melf)) {
   case 129:
    rc = read_archive(fd, melf, memname, label,
        func, arg, require_ctf);
    break;
   case 128:
    rc = read_file(melf, memname, label,
        func, arg, require_ctf);
    break;
   default:
    terminate("%s: Unknown elf kind %d\n",
        memname, elf_kind(melf));
   }

   free(memname);
  }

  cmd = elf_next(melf);
  (void) elf_end(melf);
  secnum++;

  if (rc < 0)
   return (rc);
  else
   found += rc;
 }

 return (found);
}
