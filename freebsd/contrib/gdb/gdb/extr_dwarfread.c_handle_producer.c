
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AUTO_DEMANGLING ;
 scalar_t__ DEPRECATED_STREQN (char*,int ,size_t) ;
 int GCC_PRODUCER ;
 int GNU_DEMANGLING_STYLE_STRING ;
 int GPLUS_PRODUCER ;
 int LCC_PRODUCER ;
 int LUCID_DEMANGLING_STYLE_STRING ;
 int processing_gcc_compilation ;
 int set_demangling_style (int ) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (char*,int ,size_t) ;

__attribute__((used)) static void
handle_producer (char *producer)
{




  if (DEPRECATED_STREQN (producer, GCC_PRODUCER, strlen (GCC_PRODUCER)))
    {
      char version = producer[strlen (GCC_PRODUCER)];
      processing_gcc_compilation = (version == '2' ? 2 : 1);
    }
  else
    {
      processing_gcc_compilation =
 strncmp (producer, GPLUS_PRODUCER, strlen (GPLUS_PRODUCER)) == 0;
    }






  if (AUTO_DEMANGLING)
    {
      if (DEPRECATED_STREQN (producer, GPLUS_PRODUCER, strlen (GPLUS_PRODUCER)))
 {





 }
      else if (DEPRECATED_STREQN (producer, LCC_PRODUCER, strlen (LCC_PRODUCER)))
 {
   set_demangling_style (LUCID_DEMANGLING_STYLE_STRING);
 }
    }
}
