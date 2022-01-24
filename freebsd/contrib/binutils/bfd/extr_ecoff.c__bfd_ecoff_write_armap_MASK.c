#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_mtime; } ;
struct TYPE_14__ {TYPE_2__* abfd; } ;
struct orl {unsigned int namidx; scalar_t__* name; TYPE_1__ u; } ;
struct ar_hdr {char* ar_mode; char* ar_fmag; int /*<<< orphan*/  ar_size; int /*<<< orphan*/ * ar_gid; int /*<<< orphan*/ * ar_uid; int /*<<< orphan*/  ar_date; void** ar_name; } ;
typedef  int file_ptr ;
typedef  unsigned int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_15__ {struct TYPE_15__* archive_next; struct TYPE_15__* archive_head; int /*<<< orphan*/  filename; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_16__ {int /*<<< orphan*/  armap_start; } ;

/* Variables and functions */
 void* ARMAP_BIG_ENDIAN ; 
 int /*<<< orphan*/  ARMAP_END ; 
 int ARMAP_END_INDEX ; 
 size_t ARMAP_HEADER_ENDIAN_INDEX ; 
 size_t ARMAP_HEADER_MARKER_INDEX ; 
 void* ARMAP_LITTLE_ENDIAN ; 
 void* ARMAP_MARKER ; 
 size_t ARMAP_OBJECT_ENDIAN_INDEX ; 
 size_t ARMAP_OBJECT_MARKER_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int,int /*<<< orphan*/ *) ; 
 int SARMAG ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (char*,unsigned int,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,unsigned int) ; 
 unsigned int FUNC9 (scalar_t__,unsigned int*,unsigned int,unsigned int) ; 
 TYPE_3__* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (void**,int /*<<< orphan*/ ) ; 
 unsigned int FUNC16 (scalar_t__) ; 

bfd_boolean
FUNC17 (bfd *abfd,
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

  /* Ultrix appears to use as a hash table size the least power of two
     greater than twice the number of entries.  */
  for (hashlog = 0; ((unsigned int) 1 << hashlog) <= 2 * orl_count; hashlog++)
    ;
  hashsize = 1 << hashlog;

  symdefsize = hashsize * 8;
  padit = stridx % 2;
  stringsize = stridx + padit;

  /* Include 8 bytes to store symdefsize and stringsize in output.  */
  mapsize = symdefsize + stringsize + 8;

  firstreal = SARMAG + sizeof (struct ar_hdr) + mapsize + elength;

  FUNC12 ((void *) &hdr, 0, sizeof hdr);

  /* Work out the ECOFF armap name.  */
  FUNC15 (hdr.ar_name, FUNC10 (abfd)->armap_start);
  hdr.ar_name[ARMAP_HEADER_MARKER_INDEX] = ARMAP_MARKER;
  hdr.ar_name[ARMAP_HEADER_ENDIAN_INDEX] =
    (FUNC6 (abfd)
     ? ARMAP_BIG_ENDIAN
     : ARMAP_LITTLE_ENDIAN);
  hdr.ar_name[ARMAP_OBJECT_MARKER_INDEX] = ARMAP_MARKER;
  hdr.ar_name[ARMAP_OBJECT_ENDIAN_INDEX] =
    FUNC4 (abfd) ? ARMAP_BIG_ENDIAN : ARMAP_LITTLE_ENDIAN;
  FUNC11 (hdr.ar_name + ARMAP_END_INDEX, ARMAP_END, sizeof ARMAP_END - 1);

  /* Write the timestamp of the archive header to be just a little bit
     later than the timestamp of the file, otherwise the linker will
     complain that the index is out of date.  Actually, the Ultrix
     linker just checks the archive name; the GNU linker may check the
     date.  */
  FUNC14 (abfd->filename, &statbuf);
  FUNC13 (hdr.ar_date, "%ld", (long) (statbuf.st_mtime + 60));

  /* The DECstation uses zeroes for the uid, gid and mode of the
     armap.  */
  hdr.ar_uid[0] = '0';
  hdr.ar_gid[0] = '0';
  /* Building gcc ends up extracting the armap as a file - twice.  */
  hdr.ar_mode[0] = '6';
  hdr.ar_mode[1] = '4';
  hdr.ar_mode[2] = '4';

  FUNC13 (hdr.ar_size, "%-10d", (int) mapsize);

  hdr.ar_fmag[0] = '`';
  hdr.ar_fmag[1] = '\012';

  /* Turn all null bytes in the header into spaces.  */
  for (i = 0; i < sizeof (struct ar_hdr); i++)
   if (((char *) (&hdr))[i] == '\0')
     (((char *) (&hdr))[i]) = ' ';

  if (FUNC5 ((void *) &hdr, (bfd_size_type) sizeof (struct ar_hdr), abfd)
      != sizeof (struct ar_hdr))
    return FALSE;

  FUNC2 (abfd, hashsize, temp);
  if (FUNC5 ((void *) temp, (bfd_size_type) 4, abfd) != 4)
    return FALSE;

  hashtable = FUNC8 (abfd, symdefsize);
  if (!hashtable)
    return FALSE;

  current = abfd->archive_head;
  last_elt = current;
  for (i = 0; i < orl_count; i++)
    {
      unsigned int hash, rehash = 0;

      /* Advance firstreal to the file position of this archive
	 element.  */
      if (map[i].u.abfd != last_elt)
	{
	  do
	    {
	      firstreal += FUNC3 (current) + sizeof (struct ar_hdr);
	      firstreal += firstreal % 2;
	      current = current->archive_next;
	    }
	  while (current != map[i].u.abfd);
	}

      last_elt = current;

      hash = FUNC9 (*map[i].name, &rehash, hashsize, hashlog);
      if (FUNC1 (abfd, (hashtable + (hash * 8) + 4)) != 0)
	{
	  unsigned int srch;

	  /* The desired slot is already taken.  */
	  for (srch = (hash + rehash) & (hashsize - 1);
	       srch != hash;
	       srch = (srch + rehash) & (hashsize - 1))
	    if (FUNC1 (abfd, (hashtable + (srch * 8) + 4)) == 0)
	      break;

	  FUNC0 (srch != hash);

	  hash = srch;
	}

      FUNC2 (abfd, map[i].namidx, (hashtable + hash * 8));
      FUNC2 (abfd, firstreal, (hashtable + hash * 8 + 4));
    }

  if (FUNC5 ((void *) hashtable, symdefsize, abfd) != symdefsize)
    return FALSE;

  FUNC7 (abfd, hashtable);

  /* Now write the strings.  */
  FUNC2 (abfd, stringsize, temp);
  if (FUNC5 ((void *) temp, (bfd_size_type) 4, abfd) != 4)
    return FALSE;
  for (i = 0; i < orl_count; i++)
    {
      bfd_size_type len;

      len = FUNC16 (*map[i].name) + 1;
      if (FUNC5 ((void *) (*map[i].name), len, abfd) != len)
	return FALSE;
    }

  /* The spec sez this should be a newline.  But in order to be
     bug-compatible for DECstation ar we use a null.  */
  if (padit)
    {
      if (FUNC5 ("", (bfd_size_type) 1, abfd) != 1)
	return FALSE;
    }

  return TRUE;
}