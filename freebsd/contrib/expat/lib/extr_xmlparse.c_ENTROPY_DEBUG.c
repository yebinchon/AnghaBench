
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entropy ;


 int fprintf (int ,char*,char const*,int,unsigned long,unsigned long) ;
 char* getenv (char*) ;
 int stderr ;
 int strcmp (char const* const,char*) ;

__attribute__((used)) static unsigned long
ENTROPY_DEBUG(const char * label, unsigned long entropy) {
  const char * const EXPAT_ENTROPY_DEBUG = getenv("EXPAT_ENTROPY_DEBUG");
  if (EXPAT_ENTROPY_DEBUG && ! strcmp(EXPAT_ENTROPY_DEBUG, "1")) {
    fprintf(stderr, "Entropy: %s --> 0x%0*lx (%lu bytes)\n",
        label,
        (int)sizeof(entropy) * 2, entropy,
        (unsigned long)sizeof(entropy));
  }
  return entropy;
}
