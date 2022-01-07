
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int DEF_ATTR_STRING (char const*) ;
 int EQ_ATTR ;
 int attr_rtx (int ,int ,int ) ;

__attribute__((used)) static rtx
attr_eq (const char *name, const char *value)
{
  return attr_rtx (EQ_ATTR, DEF_ATTR_STRING (name), DEF_ATTR_STRING (value));
}
