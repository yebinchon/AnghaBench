
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_RANGE ;
 int TYPE_CODE_UNDEF ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 char* ada_type_name (struct type*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static const char *
fixed_type_info (struct type *type)
{
  const char *name = ada_type_name (type);
  enum type_code code = (type == ((void*)0)) ? TYPE_CODE_UNDEF : TYPE_CODE (type);

  if ((code == TYPE_CODE_INT || code == TYPE_CODE_RANGE) && name != ((void*)0))
    {
      const char *tail = strstr (name, "___XF_");
      if (tail == ((void*)0))
 return ((void*)0);
      else
 return tail + 5;
    }
  else if (code == TYPE_CODE_RANGE && TYPE_TARGET_TYPE (type) != type)
    return fixed_type_info (TYPE_TARGET_TYPE (type));
  else
    return ((void*)0);
}
