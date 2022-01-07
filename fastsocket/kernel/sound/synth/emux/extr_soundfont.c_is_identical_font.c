
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soundfont {int type; int name; } ;


 int SNDRV_SFNT_PATCH_NAME_LEN ;
 int SNDRV_SFNT_PAT_SHARED ;
 scalar_t__ memcmp (int ,unsigned char*,int ) ;

__attribute__((used)) static int
is_identical_font(struct snd_soundfont *sf, int type, unsigned char *name)
{
 return ((sf->type & SNDRV_SFNT_PAT_SHARED) &&
  (sf->type & 0x0f) == (type & 0x0f) &&
  (name == ((void*)0) ||
   memcmp(sf->name, name, SNDRV_SFNT_PATCH_NAME_LEN) == 0));
}
