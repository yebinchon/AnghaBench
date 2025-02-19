
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {size_t iss; } ;
struct TYPE_13__ {scalar_t__ crfd; } ;
struct TYPE_10__ {unsigned int rfd; unsigned int index; } ;
struct TYPE_12__ {unsigned int isym; TYPE_1__ rndx; } ;
struct TYPE_11__ {unsigned int rfdBase; size_t issBase; unsigned int isymBase; } ;
typedef TYPE_2__ FDR ;
typedef TYPE_3__ AUXU ;


 unsigned int ST_RFDESCAPE ;
 TYPE_2__* file_desc ;
 unsigned int indexNil ;
 char* l_strings ;
 TYPE_5__* l_symbols ;
 size_t* rfile_desc ;
 int sprintf (char*,char*,char const*,char const*,unsigned int,unsigned int) ;
 TYPE_4__ sym_hdr ;

__attribute__((used)) static void
emit_aggregate (char *string, AUXU u, AUXU u2, const char *which, FDR *fdp)
{
  unsigned int ifd = u.rndx.rfd;
  unsigned int index = u.rndx.index;
  const char *name;

  if (ifd == ST_RFDESCAPE)
    ifd = u2.isym;



  if (ifd == 0xffffffff
      || (u.rndx.rfd == ST_RFDESCAPE && index == 0))
    name = "<undefined>";
  else if (index == indexNil)
    name = "<no name>";
  else
    {
      if (fdp == 0 || sym_hdr.crfd == 0)
 fdp = &file_desc[ifd];
      else
 fdp = &file_desc[rfile_desc[fdp->rfdBase + ifd]];
      name = &l_strings[fdp->issBase + l_symbols[index + fdp->isymBase].iss];
    }

  sprintf (string,
    "%s %s { ifd = %u, index = %u }",
    which, name, ifd, index);
}
