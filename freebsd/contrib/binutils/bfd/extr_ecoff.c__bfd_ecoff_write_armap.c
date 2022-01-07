
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct stat {scalar_t__ st_mtime; } ;
struct TYPE_14__ {TYPE_2__* abfd; } ;
struct orl {unsigned int namidx; scalar_t__* name; TYPE_1__ u; } ;
struct ar_hdr {char* ar_mode; char* ar_fmag; int ar_size; int * ar_gid; int * ar_uid; int ar_date; void** ar_name; } ;
typedef int file_ptr ;
typedef unsigned int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_15__ {struct TYPE_15__* archive_next; struct TYPE_15__* archive_head; int filename; } ;
typedef TYPE_2__ bfd ;
struct TYPE_16__ {int armap_start; } ;


 void* ARMAP_BIG_ENDIAN ;
 int ARMAP_END ;
 int ARMAP_END_INDEX ;
 size_t ARMAP_HEADER_ENDIAN_INDEX ;
 size_t ARMAP_HEADER_MARKER_INDEX ;
 void* ARMAP_LITTLE_ENDIAN ;
 void* ARMAP_MARKER ;
 size_t ARMAP_OBJECT_ENDIAN_INDEX ;
 size_t ARMAP_OBJECT_MARKER_INDEX ;
 int BFD_ASSERT (int) ;
 int FALSE ;
 scalar_t__ H_GET_32 (TYPE_2__*,int *) ;
 int H_PUT_32 (TYPE_2__*,unsigned int,int *) ;
 int SARMAG ;
 int TRUE ;
 scalar_t__ arelt_size (TYPE_2__*) ;
 scalar_t__ bfd_big_endian (TYPE_2__*) ;
 int bfd_bwrite (char*,unsigned int,TYPE_2__*) ;
 scalar_t__ bfd_header_big_endian (TYPE_2__*) ;
 int bfd_release (TYPE_2__*,int *) ;
 int * bfd_zalloc (TYPE_2__*,unsigned int) ;
 unsigned int ecoff_armap_hash (scalar_t__,unsigned int*,unsigned int,unsigned int) ;
 TYPE_3__* ecoff_backend (TYPE_2__*) ;
 int memcpy (void**,int ,int) ;
 int memset (void*,int ,int) ;
 int sprintf (int ,char*,int) ;
 int stat (int ,struct stat*) ;
 int strcpy (void**,int ) ;
 unsigned int strlen (scalar_t__) ;

bfd_boolean
_bfd_ecoff_write_armap (bfd *abfd,
   unsigned int elength,
   struct orl *map,
   unsigned int orl_count,
   int stridx)
{
  unsigned int hashsize, hashlog;
  bfd_size_type symdefsize;
  int padit;
  unsigned int stringsize;
  unsigned int mapsize;
  file_ptr firstreal;
  struct ar_hdr hdr;
  struct stat statbuf;
  unsigned int i;
  bfd_byte temp[4];
  bfd_byte *hashtable;
  bfd *current;
  bfd *last_elt;



  for (hashlog = 0; ((unsigned int) 1 << hashlog) <= 2 * orl_count; hashlog++)
    ;
  hashsize = 1 << hashlog;

  symdefsize = hashsize * 8;
  padit = stridx % 2;
  stringsize = stridx + padit;


  mapsize = symdefsize + stringsize + 8;

  firstreal = SARMAG + sizeof (struct ar_hdr) + mapsize + elength;

  memset ((void *) &hdr, 0, sizeof hdr);


  strcpy (hdr.ar_name, ecoff_backend (abfd)->armap_start);
  hdr.ar_name[ARMAP_HEADER_MARKER_INDEX] = ARMAP_MARKER;
  hdr.ar_name[ARMAP_HEADER_ENDIAN_INDEX] =
    (bfd_header_big_endian (abfd)
     ? ARMAP_BIG_ENDIAN
     : ARMAP_LITTLE_ENDIAN);
  hdr.ar_name[ARMAP_OBJECT_MARKER_INDEX] = ARMAP_MARKER;
  hdr.ar_name[ARMAP_OBJECT_ENDIAN_INDEX] =
    bfd_big_endian (abfd) ? ARMAP_BIG_ENDIAN : ARMAP_LITTLE_ENDIAN;
  memcpy (hdr.ar_name + ARMAP_END_INDEX, ARMAP_END, sizeof ARMAP_END - 1);






  stat (abfd->filename, &statbuf);
  sprintf (hdr.ar_date, "%ld", (long) (statbuf.st_mtime + 60));



  hdr.ar_uid[0] = '0';
  hdr.ar_gid[0] = '0';

  hdr.ar_mode[0] = '6';
  hdr.ar_mode[1] = '4';
  hdr.ar_mode[2] = '4';

  sprintf (hdr.ar_size, "%-10d", (int) mapsize);

  hdr.ar_fmag[0] = '`';
  hdr.ar_fmag[1] = '\012';


  for (i = 0; i < sizeof (struct ar_hdr); i++)
   if (((char *) (&hdr))[i] == '\0')
     (((char *) (&hdr))[i]) = ' ';

  if (bfd_bwrite ((void *) &hdr, (bfd_size_type) sizeof (struct ar_hdr), abfd)
      != sizeof (struct ar_hdr))
    return FALSE;

  H_PUT_32 (abfd, hashsize, temp);
  if (bfd_bwrite ((void *) temp, (bfd_size_type) 4, abfd) != 4)
    return FALSE;

  hashtable = bfd_zalloc (abfd, symdefsize);
  if (!hashtable)
    return FALSE;

  current = abfd->archive_head;
  last_elt = current;
  for (i = 0; i < orl_count; i++)
    {
      unsigned int hash, rehash = 0;



      if (map[i].u.abfd != last_elt)
 {
   do
     {
       firstreal += arelt_size (current) + sizeof (struct ar_hdr);
       firstreal += firstreal % 2;
       current = current->archive_next;
     }
   while (current != map[i].u.abfd);
 }

      last_elt = current;

      hash = ecoff_armap_hash (*map[i].name, &rehash, hashsize, hashlog);
      if (H_GET_32 (abfd, (hashtable + (hash * 8) + 4)) != 0)
 {
   unsigned int srch;


   for (srch = (hash + rehash) & (hashsize - 1);
        srch != hash;
        srch = (srch + rehash) & (hashsize - 1))
     if (H_GET_32 (abfd, (hashtable + (srch * 8) + 4)) == 0)
       break;

   BFD_ASSERT (srch != hash);

   hash = srch;
 }

      H_PUT_32 (abfd, map[i].namidx, (hashtable + hash * 8));
      H_PUT_32 (abfd, firstreal, (hashtable + hash * 8 + 4));
    }

  if (bfd_bwrite ((void *) hashtable, symdefsize, abfd) != symdefsize)
    return FALSE;

  bfd_release (abfd, hashtable);


  H_PUT_32 (abfd, stringsize, temp);
  if (bfd_bwrite ((void *) temp, (bfd_size_type) 4, abfd) != 4)
    return FALSE;
  for (i = 0; i < orl_count; i++)
    {
      bfd_size_type len;

      len = strlen (*map[i].name) + 1;
      if (bfd_bwrite ((void *) (*map[i].name), len, abfd) != len)
 return FALSE;
    }



  if (padit)
    {
      if (bfd_bwrite ("", (bfd_size_type) 1, abfd) != 1)
 return FALSE;
    }

  return TRUE;
}
