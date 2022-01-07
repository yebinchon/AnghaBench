
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_QUAL_CONST ;
 int TYPE_QUAL_RESTRICT ;
 int TYPE_QUAL_VOLATILE ;
 int abort () ;

__attribute__((used)) static int
code_for_qualifier (int c)
{
  switch (c)
    {
    case 'C':
      return TYPE_QUAL_CONST;

    case 'V':
      return TYPE_QUAL_VOLATILE;

    case 'u':
      return TYPE_QUAL_RESTRICT;

    default:
      break;
    }


  abort ();
}
