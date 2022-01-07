
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_score_dynamic_type (unsigned long type)
{
  switch (type)
    {
    case 133: return "SCORE_BASE_ADDRESS";
    case 130: return "SCORE_LOCAL_GOTNO";
    case 129: return "SCORE_SYMTABNO";
    case 132: return "SCORE_GOTSYM";
    case 128: return "SCORE_UNREFEXTNO";
    case 131: return "SCORE_HIPAGENO";
    default:
      return ((void*)0);
    }
}
