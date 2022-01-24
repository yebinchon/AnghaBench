#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mtime; int st_uid; int st_gid; int st_mode; int st_size; } ;
struct bfd_in_memory {int size; } ;
struct areltdata {int parsed_size; char* arch_header; } ;
struct ar_hdr {int /*<<< orphan*/  ar_fmag; int /*<<< orphan*/  ar_size; int /*<<< orphan*/  ar_mode; int /*<<< orphan*/  ar_gid; int /*<<< orphan*/  ar_uid; int /*<<< orphan*/  ar_date; } ;
typedef  int bfd_size_type ;
struct TYPE_5__ {int flags; struct bfd_in_memory* iostream; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  ARFMAG ; 
 int BFD_IN_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct areltdata* FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ar_hdr*,char,int) ; 
 scalar_t__ FUNC8 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 

__attribute__((used)) static struct areltdata *
FUNC10 (bfd *abfd, const char *filename, bfd *member)
{
  struct stat status;
  struct areltdata *ared;
  struct ar_hdr *hdr;
  bfd_size_type amt;

  if (member && (member->flags & BFD_IN_MEMORY) != 0)
    {
      /* Assume we just "made" the member, and fake it.  */
      struct bfd_in_memory *bim = member->iostream;
      FUNC9 (&status.st_mtime);
      status.st_uid = FUNC4 ();
      status.st_gid = FUNC3 ();
      status.st_mode = 0644;
      status.st_size = bim->size;
    }
  else if (FUNC8 (filename, &status) != 0)
    {
      FUNC1 (bfd_error_system_call);
      return NULL;
    }

  amt = sizeof (struct ar_hdr) + sizeof (struct areltdata);
  ared = FUNC2 (abfd, amt);
  if (ared == NULL)
    return NULL;
  hdr = (struct ar_hdr *) (((char *) ared) + sizeof (struct areltdata));

  /* ar headers are space padded, not null padded!  */
  FUNC7 (hdr, ' ', sizeof (struct ar_hdr));

  FUNC0 (hdr->ar_date, sizeof (hdr->ar_date), "%-12ld",
                    status.st_mtime);
#ifdef HPUX_LARGE_AR_IDS
  /* HP has a very "special" way to handle UID/GID's with numeric values
     > 99999.  */
  if (status.st_uid > 99999)
    hpux_uid_gid_encode (hdr->ar_uid, (long) status.st_uid);
  else
#endif
    FUNC0 (hdr->ar_uid, sizeof (hdr->ar_uid), "%ld",
                      status.st_uid);
#ifdef HPUX_LARGE_AR_IDS
  /* HP has a very "special" way to handle UID/GID's with numeric values
     > 99999.  */
  if (status.st_gid > 99999)
    hpux_uid_gid_encode (hdr->ar_gid, (long) status.st_gid);
  else
#endif
    FUNC0 (hdr->ar_gid, sizeof (hdr->ar_gid), "%ld",
                      status.st_gid);
  FUNC0 (hdr->ar_mode, sizeof (hdr->ar_mode), "%-8lo",
                    status.st_mode);
  FUNC0 (hdr->ar_size, sizeof (hdr->ar_size), "%-10ld",
                    status.st_size);
  FUNC6 (hdr->ar_fmag, ARFMAG, 2);
  ared->parsed_size = status.st_size;
  ared->arch_header = (char *) hdr;

  return ared;
}