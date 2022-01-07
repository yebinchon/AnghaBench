
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_NAME (int const) ;
 int write_name (int ,int ) ;

__attribute__((used)) static void
write_class_enum_type (const tree type)
{
  write_name (TYPE_NAME (type), 0);
}
