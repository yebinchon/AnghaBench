
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TARGET_MS_BITFIELD_LAYOUT ;
 int TYPE_ATTRIBUTES (int ) ;
 scalar_t__ lookup_attribute (char*,int ) ;

__attribute__((used)) static bool
ix86_ms_bitfield_layout_p (tree record_type)
{
  return (TARGET_MS_BITFIELD_LAYOUT &&
   !lookup_attribute ("gcc_struct", TYPE_ATTRIBUTES (record_type)))
    || lookup_attribute ("ms_struct", TYPE_ATTRIBUTES (record_type));
}
