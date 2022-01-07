
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AMDFAM10H ;
 unsigned int AMDFAM10H_BARCELONA ;
 unsigned int AMDFAM10H_ISTANBUL ;
 unsigned int AMDFAM10H_SHANGHAI ;
 unsigned int AMDFAM15H ;
 unsigned int AMDFAM15H_BDVER1 ;
 unsigned int AMDFAM15H_BDVER2 ;
 unsigned int AMDFAM15H_BDVER3 ;
 unsigned int AMDFAM15H_BDVER4 ;
 unsigned int AMDFAM17H ;
 unsigned int AMDFAM17H_ZNVER1 ;
 unsigned int AMDFAM17H_ZNVER2 ;
 unsigned int AMD_BTVER1 ;
 unsigned int AMD_BTVER2 ;

__attribute__((used)) static void getAMDProcessorTypeAndSubtype(unsigned Family, unsigned Model,
                                          unsigned Features, unsigned Features2,
                                          unsigned *Type, unsigned *Subtype) {



  switch (Family) {
  case 16:
    *Type = AMDFAM10H;
    switch (Model) {
    case 2:
      *Subtype = AMDFAM10H_BARCELONA;
      break;
    case 4:
      *Subtype = AMDFAM10H_SHANGHAI;
      break;
    case 8:
      *Subtype = AMDFAM10H_ISTANBUL;
      break;
    }
    break;
  case 20:
    *Type = AMD_BTVER1;
    break;
  case 21:
    *Type = AMDFAM15H;
    if (Model >= 0x60 && Model <= 0x7f) {
      *Subtype = AMDFAM15H_BDVER4;
      break;
    }
    if (Model >= 0x30 && Model <= 0x3f) {
      *Subtype = AMDFAM15H_BDVER3;
      break;
    }
    if ((Model >= 0x10 && Model <= 0x1f) || Model == 0x02) {
      *Subtype = AMDFAM15H_BDVER2;
      break;
    }
    if (Model <= 0x0f) {
      *Subtype = AMDFAM15H_BDVER1;
      break;
    }
    break;
  case 22:
    *Type = AMD_BTVER2;
    break;
  case 23:
    *Type = AMDFAM17H;
    if (Model >= 0x30 && Model <= 0x3f) {
      *Subtype = AMDFAM17H_ZNVER2;
      break;
    }
    if (Model <= 0x0f) {
      *Subtype = AMDFAM17H_ZNVER1;
      break;
    }
    break;
  default:
    break;
  }
}
