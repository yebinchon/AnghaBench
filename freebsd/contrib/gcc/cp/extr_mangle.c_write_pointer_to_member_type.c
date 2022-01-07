
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_PTRMEM_CLASS_TYPE (int const) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int const) ;
 int write_char (char) ;
 int write_type (int ) ;

__attribute__((used)) static void
write_pointer_to_member_type (const tree type)
{
  write_char ('M');
  write_type (TYPE_PTRMEM_CLASS_TYPE (type));
  write_type (TYPE_PTRMEM_POINTED_TO_TYPE (type));
}
