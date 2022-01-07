
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_QUALS (int const) ;
 int TYPE_QUAL_CONST ;
 int TYPE_QUAL_RESTRICT ;
 int TYPE_QUAL_VOLATILE ;
 int write_char (char) ;

__attribute__((used)) static int
write_CV_qualifiers_for_type (const tree type)
{
  int num_qualifiers = 0;
  if (TYPE_QUALS (type) & TYPE_QUAL_RESTRICT)
    {
      write_char ('r');
      ++num_qualifiers;
    }
  if (TYPE_QUALS (type) & TYPE_QUAL_VOLATILE)
    {
      write_char ('V');
      ++num_qualifiers;
    }
  if (TYPE_QUALS (type) & TYPE_QUAL_CONST)
    {
      write_char ('K');
      ++num_qualifiers;
    }

  return num_qualifiers;
}
