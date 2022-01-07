
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int journal_t ;


 int JBD2_FEATURE_INCOMPAT_64BIT ;
 scalar_t__ JBD2_HAS_INCOMPAT_FEATURE (int *,int ) ;
 size_t JBD2_TAG_SIZE32 ;
 size_t JBD2_TAG_SIZE64 ;

size_t journal_tag_bytes(journal_t *journal)
{
 if (JBD2_HAS_INCOMPAT_FEATURE(journal, JBD2_FEATURE_INCOMPAT_64BIT))
  return JBD2_TAG_SIZE64;
 else
  return JBD2_TAG_SIZE32;
}
