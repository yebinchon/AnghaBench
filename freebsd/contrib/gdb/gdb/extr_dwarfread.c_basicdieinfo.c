
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
struct dieinfo {char* die; int die_ref; scalar_t__ die_length; void* die_tag; } ;


 int DIE_ID ;
 int DIE_NAME ;
 int GET_UNSIGNED ;
 scalar_t__ SIZEOF_DIE_LENGTH ;
 scalar_t__ SIZEOF_DIE_TAG ;
 void* TAG_padding ;
 int complaint (int *,char*,int ,int ,int) ;
 struct dieinfo* curdie ;
 char* dbbase ;
 int dbroff ;
 int dbsize ;
 int memset (struct dieinfo*,int ,int) ;
 int symfile_complaints ;
 void* target_to_host (char*,scalar_t__,int ,struct objfile*) ;

__attribute__((used)) static void
basicdieinfo (struct dieinfo *dip, char *diep, struct objfile *objfile)
{
  curdie = dip;
  memset (dip, 0, sizeof (struct dieinfo));
  dip->die = diep;
  dip->die_ref = dbroff + (diep - dbbase);
  dip->die_length = target_to_host (diep, SIZEOF_DIE_LENGTH, GET_UNSIGNED,
        objfile);
  if ((dip->die_length < SIZEOF_DIE_LENGTH) ||
      ((diep + dip->die_length) > (dbbase + dbsize)))
    {
      complaint (&symfile_complaints,
   "DIE @ 0x%x \"%s\", malformed DIE, bad length (%ld bytes)",
   DIE_ID, DIE_NAME, dip->die_length);
      dip->die_length = 0;
    }
  else if (dip->die_length < (SIZEOF_DIE_LENGTH + SIZEOF_DIE_TAG))
    {
      dip->die_tag = TAG_padding;
    }
  else
    {
      diep += SIZEOF_DIE_LENGTH;
      dip->die_tag = target_to_host (diep, SIZEOF_DIE_TAG, GET_UNSIGNED,
         objfile);
    }
}
