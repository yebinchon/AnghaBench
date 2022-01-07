
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct media {int name; } ;


 scalar_t__ media_count ;
 struct media* media_list ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static struct media *media_find(const char *name)
{
 struct media *m_ptr;
 u32 i;

 for (i = 0, m_ptr = media_list; i < media_count; i++, m_ptr++) {
  if (!strcmp(m_ptr->name, name))
   return m_ptr;
 }
 return ((void*)0);
}
