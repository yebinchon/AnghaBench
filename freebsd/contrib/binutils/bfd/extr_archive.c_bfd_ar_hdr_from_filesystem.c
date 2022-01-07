
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mtime; int st_uid; int st_gid; int st_mode; int st_size; } ;
struct bfd_in_memory {int size; } ;
struct areltdata {int parsed_size; char* arch_header; } ;
struct ar_hdr {int ar_fmag; int ar_size; int ar_mode; int ar_gid; int ar_uid; int ar_date; } ;
typedef int bfd_size_type ;
struct TYPE_5__ {int flags; struct bfd_in_memory* iostream; } ;
typedef TYPE_1__ bfd ;


 int ARFMAG ;
 int BFD_IN_MEMORY ;
 int _bfd_ar_spacepad (int ,int,char*,int) ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;
 struct areltdata* bfd_zalloc (TYPE_1__*,int) ;
 int getgid () ;
 int getuid () ;
 int hpux_uid_gid_encode (int ,long) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ar_hdr*,char,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int time (int*) ;

__attribute__((used)) static struct areltdata *
bfd_ar_hdr_from_filesystem (bfd *abfd, const char *filename, bfd *member)
{
  struct stat status;
  struct areltdata *ared;
  struct ar_hdr *hdr;
  bfd_size_type amt;

  if (member && (member->flags & BFD_IN_MEMORY) != 0)
    {

      struct bfd_in_memory *bim = member->iostream;
      time (&status.st_mtime);
      status.st_uid = getuid ();
      status.st_gid = getgid ();
      status.st_mode = 0644;
      status.st_size = bim->size;
    }
  else if (stat (filename, &status) != 0)
    {
      bfd_set_error (bfd_error_system_call);
      return ((void*)0);
    }

  amt = sizeof (struct ar_hdr) + sizeof (struct areltdata);
  ared = bfd_zalloc (abfd, amt);
  if (ared == ((void*)0))
    return ((void*)0);
  hdr = (struct ar_hdr *) (((char *) ared) + sizeof (struct areltdata));


  memset (hdr, ' ', sizeof (struct ar_hdr));

  _bfd_ar_spacepad (hdr->ar_date, sizeof (hdr->ar_date), "%-12ld",
                    status.st_mtime);







    _bfd_ar_spacepad (hdr->ar_uid, sizeof (hdr->ar_uid), "%ld",
                      status.st_uid);







    _bfd_ar_spacepad (hdr->ar_gid, sizeof (hdr->ar_gid), "%ld",
                      status.st_gid);
  _bfd_ar_spacepad (hdr->ar_mode, sizeof (hdr->ar_mode), "%-8lo",
                    status.st_mode);
  _bfd_ar_spacepad (hdr->ar_size, sizeof (hdr->ar_size), "%-10ld",
                    status.st_size);
  memcpy (hdr->ar_fmag, ARFMAG, 2);
  ared->parsed_size = status.st_size;
  ared->arch_header = (char *) hdr;

  return ared;
}
