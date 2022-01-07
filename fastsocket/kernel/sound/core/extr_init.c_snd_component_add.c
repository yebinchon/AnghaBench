
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {char const* components; } ;


 int ENOMEM ;
 int snd_BUG () ;
 int strcat (char*,char const*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

int snd_component_add(struct snd_card *card, const char *component)
{
 char *ptr;
 int len = strlen(component);

 ptr = strstr(card->components, component);
 if (ptr != ((void*)0)) {
  if (ptr[len] == '\0' || ptr[len] == ' ')
   return 1;
 }
 if (strlen(card->components) + 1 + len + 1 > sizeof(card->components)) {
  snd_BUG();
  return -ENOMEM;
 }
 if (card->components[0] != '\0')
  strcat(card->components, " ");
 strcat(card->components, component);
 return 0;
}
