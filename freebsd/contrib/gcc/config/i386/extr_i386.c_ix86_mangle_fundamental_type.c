
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int TYPE_MODE (int ) ;


__attribute__((used)) static const char *
ix86_mangle_fundamental_type (tree type)
{
  switch (TYPE_MODE (type))
    {
    case 129:

      return "g";
    case 128:

      return "e";
    default:
      return ((void*)0);
    }
}
