#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hdr_ext {int /*<<< orphan*/  h_cbExtOffset; int /*<<< orphan*/  h_iextMax; int /*<<< orphan*/  h_cbRfdOffset; int /*<<< orphan*/  h_crfd; int /*<<< orphan*/  h_cbFdOffset; int /*<<< orphan*/  h_ifdMax; int /*<<< orphan*/  h_cbSsExtOffset; int /*<<< orphan*/  h_issExtMax; int /*<<< orphan*/  h_cbSsOffset; int /*<<< orphan*/  h_issMax; int /*<<< orphan*/  h_cbAuxOffset; int /*<<< orphan*/  h_iauxMax; int /*<<< orphan*/  h_cbOptOffset; int /*<<< orphan*/  h_ioptMax; int /*<<< orphan*/  h_cbSymOffset; int /*<<< orphan*/  h_isymMax; int /*<<< orphan*/  h_cbPdOffset; int /*<<< orphan*/  h_ipdMax; int /*<<< orphan*/  h_cbDnOffset; int /*<<< orphan*/  h_idnMax; int /*<<< orphan*/  h_cbLineOffset; int /*<<< orphan*/  h_cbLine; int /*<<< orphan*/  h_ilineMax; int /*<<< orphan*/  h_vstamp; int /*<<< orphan*/  h_magic; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int /*<<< orphan*/  cbExtOffset; int /*<<< orphan*/  iextMax; int /*<<< orphan*/  cbRfdOffset; int /*<<< orphan*/  crfd; int /*<<< orphan*/  cbFdOffset; int /*<<< orphan*/  ifdMax; int /*<<< orphan*/  cbSsExtOffset; int /*<<< orphan*/  issExtMax; int /*<<< orphan*/  cbSsOffset; int /*<<< orphan*/  issMax; int /*<<< orphan*/  cbAuxOffset; int /*<<< orphan*/  iauxMax; int /*<<< orphan*/  cbOptOffset; int /*<<< orphan*/  ioptMax; int /*<<< orphan*/  cbSymOffset; int /*<<< orphan*/  isymMax; int /*<<< orphan*/  cbPdOffset; int /*<<< orphan*/  ipdMax; int /*<<< orphan*/  cbDnOffset; int /*<<< orphan*/  idnMax; int /*<<< orphan*/  cbLineOffset; int /*<<< orphan*/  cbLine; int /*<<< orphan*/  ilineMax; int /*<<< orphan*/  vstamp; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ HDRR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5 (bfd *abfd, const HDRR *intern_copy, void * ext_ptr)
{
  struct hdr_ext *ext = (struct hdr_ext *) ext_ptr;
  HDRR intern[1];

  *intern = *intern_copy;

  FUNC2     (abfd, intern->magic,         ext->h_magic);
  FUNC2     (abfd, intern->vstamp,        ext->h_vstamp);
  FUNC1      (abfd, intern->ilineMax,      ext->h_ilineMax);
  FUNC0 (abfd, intern->cbLine,        ext->h_cbLine);
  FUNC0 (abfd, intern->cbLineOffset,  ext->h_cbLineOffset);
  FUNC1      (abfd, intern->idnMax,        ext->h_idnMax);
  FUNC0 (abfd, intern->cbDnOffset,    ext->h_cbDnOffset);
  FUNC1      (abfd, intern->ipdMax,        ext->h_ipdMax);
  FUNC0 (abfd, intern->cbPdOffset,    ext->h_cbPdOffset);
  FUNC1      (abfd, intern->isymMax,       ext->h_isymMax);
  FUNC0 (abfd, intern->cbSymOffset,   ext->h_cbSymOffset);
  FUNC1      (abfd, intern->ioptMax,       ext->h_ioptMax);
  FUNC0 (abfd, intern->cbOptOffset,   ext->h_cbOptOffset);
  FUNC1      (abfd, intern->iauxMax,       ext->h_iauxMax);
  FUNC0 (abfd, intern->cbAuxOffset,   ext->h_cbAuxOffset);
  FUNC1      (abfd, intern->issMax,        ext->h_issMax);
  FUNC0 (abfd, intern->cbSsOffset,    ext->h_cbSsOffset);
  FUNC1      (abfd, intern->issExtMax,     ext->h_issExtMax);
  FUNC0 (abfd, intern->cbSsExtOffset, ext->h_cbSsExtOffset);
  FUNC1      (abfd, intern->ifdMax,        ext->h_ifdMax);
  FUNC0 (abfd, intern->cbFdOffset,    ext->h_cbFdOffset);
  FUNC1      (abfd, intern->crfd,          ext->h_crfd);
  FUNC0 (abfd, intern->cbRfdOffset,   ext->h_cbRfdOffset);
  FUNC1      (abfd, intern->iextMax,       ext->h_iextMax);
  FUNC0 (abfd, intern->cbExtOffset,   ext->h_cbExtOffset);

#ifdef TEST
  if (memcmp ((char *) ext, (char *) intern, sizeof (*intern)) != 0)
    abort ();
#endif
}