
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soundfont {int type; int name; int * samples; int * zones; struct snd_soundfont* next; int id; } ;
struct snd_sf_list {struct snd_soundfont* fonts; int fonts_size; } ;


 int GFP_KERNEL ;
 int SNDRV_SFNT_PATCH_NAME_LEN ;
 int SNDRV_SFNT_PAT_SHARED ;
 scalar_t__ is_identical_font (struct snd_soundfont*,int,char*) ;
 struct snd_soundfont* kzalloc (int,int ) ;
 int memcpy (int ,char*,int ) ;

__attribute__((used)) static struct snd_soundfont *
newsf(struct snd_sf_list *sflist, int type, char *name)
{
 struct snd_soundfont *sf;


 if (type & SNDRV_SFNT_PAT_SHARED) {
  for (sf = sflist->fonts; sf; sf = sf->next) {
   if (is_identical_font(sf, type, name)) {
    return sf;
   }
  }
 }


 sf = kzalloc(sizeof(*sf), GFP_KERNEL);
 if (sf == ((void*)0))
  return ((void*)0);
 sf->id = sflist->fonts_size;
 sflist->fonts_size++;


 sf->next = sflist->fonts;
 sflist->fonts = sf;

 sf->type = type;
 sf->zones = ((void*)0);
 sf->samples = ((void*)0);
 if (name)
  memcpy(sf->name, name, SNDRV_SFNT_PATCH_NAME_LEN);

 return sf;
}
