
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct _Dwarf_LineFile {int dummy; } ;
struct TYPE_8__ {char* lf_fname; int lf_dirndx; void* lf_size; void* lf_mtime; int * lf_fullpath; } ;
struct TYPE_7__ {int li_inclen; char** li_incdirs; int li_lflen; int li_lflist; } ;
typedef int FILE ;
typedef TYPE_1__* Dwarf_LineInfo ;
typedef TYPE_2__* Dwarf_LineFile ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_DIR_INDEX_BAD ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 void* _dwarf_decode_uleb128 (int **) ;
 scalar_t__ fclose (int *) ;
 int fprintf (int *,char*,char const*) ;
 int free (TYPE_2__*) ;
 int lf_next ;
 TYPE_2__* malloc (int) ;
 int * open_memstream (int **,size_t*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
_dwarf_lineno_add_file(Dwarf_LineInfo li, uint8_t **p, const char *compdir,
    Dwarf_Error *error, Dwarf_Debug dbg)
{
 Dwarf_LineFile lf;
 FILE *filepath;
 const char *incdir;
 uint8_t *src;
 size_t slen;

 src = *p;

 if ((lf = malloc(sizeof(struct _Dwarf_LineFile))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 lf->lf_fullpath = ((void*)0);
 lf->lf_fname = (char *) src;
 src += strlen(lf->lf_fname) + 1;
 lf->lf_dirndx = _dwarf_decode_uleb128(&src);
 if (lf->lf_dirndx > li->li_inclen) {
  free(lf);
  DWARF_SET_ERROR(dbg, error, DW_DLE_DIR_INDEX_BAD);
  return (DW_DLE_DIR_INDEX_BAD);
 }


 if (*lf->lf_fname != '/') {
  filepath = open_memstream(&lf->lf_fullpath, &slen);
  if (filepath == ((void*)0)) {
   free(lf);
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }

  if (lf->lf_dirndx > 0)
   incdir = li->li_incdirs[lf->lf_dirndx - 1];
  else
   incdir = ((void*)0);





  if (incdir == ((void*)0) || *incdir != '/')
   fprintf(filepath, "%s/", compdir);
  if (incdir != ((void*)0))
   fprintf(filepath, "%s/", incdir);
  fprintf(filepath, "%s", lf->lf_fname);
  if (fclose(filepath) != 0) {
   free(lf);
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }
 }

 lf->lf_mtime = _dwarf_decode_uleb128(&src);
 lf->lf_size = _dwarf_decode_uleb128(&src);
 STAILQ_INSERT_TAIL(&li->li_lflist, lf, lf_next);
 li->li_lflen++;

 *p = src;

 return (DW_DLE_NONE);
}
