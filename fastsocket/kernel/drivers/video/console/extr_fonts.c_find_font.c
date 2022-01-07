
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct font_desc {int name; } ;


 struct font_desc const** fonts ;
 unsigned int num_fonts ;
 int strcmp (int ,char const*) ;

const struct font_desc *find_font(const char *name)
{
   unsigned int i;

   for (i = 0; i < num_fonts; i++)
      if (!strcmp(fonts[i]->name, name))
   return fonts[i];
   return ((void*)0);
}
