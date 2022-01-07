
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FEATURE_AVX512VNNI ;
 unsigned int INTEL_BONNELL ;
 unsigned int INTEL_CORE2 ;
 unsigned int INTEL_COREI7 ;
 unsigned int INTEL_COREI7_BROADWELL ;
 unsigned int INTEL_COREI7_CANNONLAKE ;
 unsigned int INTEL_COREI7_CASCADELAKE ;
 unsigned int INTEL_COREI7_HASWELL ;
 unsigned int INTEL_COREI7_ICELAKE_CLIENT ;
 unsigned int INTEL_COREI7_ICELAKE_SERVER ;
 unsigned int INTEL_COREI7_IVYBRIDGE ;
 unsigned int INTEL_COREI7_NEHALEM ;
 unsigned int INTEL_COREI7_SANDYBRIDGE ;
 unsigned int INTEL_COREI7_SKYLAKE ;
 unsigned int INTEL_COREI7_SKYLAKE_AVX512 ;
 unsigned int INTEL_COREI7_WESTMERE ;
 unsigned int INTEL_GOLDMONT ;
 unsigned int INTEL_GOLDMONT_PLUS ;
 unsigned int INTEL_KNL ;
 unsigned int INTEL_KNM ;
 unsigned int INTEL_SILVERMONT ;
 unsigned int INTEL_TREMONT ;

__attribute__((used)) static void getIntelProcessorTypeAndSubtype(unsigned Family, unsigned Model,
                                            unsigned Brand_id,
                                            unsigned Features,
                                            unsigned Features2, unsigned *Type,
                                            unsigned *Subtype) {
  if (Brand_id != 0)
    return;
  switch (Family) {
  case 6:
    switch (Model) {
    case 0x0f:




    case 0x16:

    case 0x17:



    case 0x1d:

      *Type = INTEL_CORE2;
      break;
    case 0x1a:

    case 0x1e:

    case 0x1f:
    case 0x2e:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_NEHALEM;
      break;
    case 0x25:
    case 0x2c:

    case 0x2f:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_WESTMERE;
      break;
    case 0x2a:

    case 0x2d:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_SANDYBRIDGE;
      break;
    case 0x3a:
    case 0x3e:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_IVYBRIDGE;
      break;


    case 0x3c:
    case 0x3f:
    case 0x45:
    case 0x46:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_HASWELL;
      break;


    case 0x3d:
    case 0x47:
    case 0x4f:
    case 0x56:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_BROADWELL;
      break;


    case 0x4e:
    case 0x5e:
    case 0x8e:
    case 0x9e:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_SKYLAKE;
      break;


    case 0x55:
      *Type = INTEL_COREI7;
      if (Features2 & (1 << (FEATURE_AVX512VNNI - 32)))
        *Subtype = INTEL_COREI7_CASCADELAKE;
      else
        *Subtype = INTEL_COREI7_SKYLAKE_AVX512;
      break;


    case 0x66:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_CANNONLAKE;
      break;


    case 0x7d:
    case 0x7e:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_ICELAKE_CLIENT;
      break;


    case 0x6a:
    case 0x6c:
      *Type = INTEL_COREI7;
      *Subtype = INTEL_COREI7_ICELAKE_SERVER;
      break;

    case 0x1c:
    case 0x26:
    case 0x27:
    case 0x35:
    case 0x36:
      *Type = INTEL_BONNELL;
      break;


    case 0x37:
    case 0x4a:
    case 0x4d:
    case 0x5a:
    case 0x5d:
    case 0x4c:
      *Type = INTEL_SILVERMONT;
      break;

    case 0x5c:
    case 0x5f:
      *Type = INTEL_GOLDMONT;
      break;
    case 0x7a:
      *Type = INTEL_GOLDMONT_PLUS;
      break;
    case 0x86:
      *Type = INTEL_TREMONT;
      break;

    case 0x57:
      *Type = INTEL_KNL;
      break;

    case 0x85:
      *Type = INTEL_KNM;
      break;

    default:
      break;
      break;
    }
  default:
    break;
  }
}
