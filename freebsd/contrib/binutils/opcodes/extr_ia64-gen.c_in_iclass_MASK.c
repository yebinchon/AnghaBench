#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iclass {char const* comment; int nsubs; scalar_t__ nxsubs; char const* name; int terminal_resolved; size_t* subs; size_t* xsubs; int note; } ;
struct ia64_opcode {char const* name; scalar_t__* operands; int flags; } ;

/* Variables and functions */
 int FUNC0 (char const*,char*) ; 
 int IA64_OPCODE_POSTINC ; 
 scalar_t__ IA64_OPND_B2 ; 
 scalar_t__ IA64_OPND_F1 ; 
 scalar_t__ IA64_OPND_F2 ; 
 scalar_t__ IA64_OPND_F3 ; 
 scalar_t__ IA64_OPND_IMM14 ; 
 scalar_t__ IA64_OPND_IMM22 ; 
 scalar_t__ IA64_OPND_IMM8 ; 
 scalar_t__ IA64_OPND_IMM9b ; 
 scalar_t__ IA64_OPND_R1 ; 
 scalar_t__ IA64_OPND_R2 ; 
 scalar_t__ IA64_OPND_R3 ; 
 scalar_t__ IA64_OPND_TGT25c ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int debug ; 
 struct iclass** ics ; 
 int FUNC2 (struct ia64_opcode*,struct iclass*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,int) ; 
 char* FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC9 (struct ia64_opcode *idesc, struct iclass *ic, 
	   const char *format, const char *field, int *notep)
{
  int i;
  int resolved = 0;

  if (ic->comment)
    {
      if (FUNC0 (ic->comment, "Format"))
        {
          /* Assume that the first format seen is the most restrictive, and
             only keep a later one if it looks like it's more restrictive.  */
          if (format)
            {
              if (FUNC5 (ic->comment) < FUNC5 (format))
                {
                  FUNC8 (FUNC1("most recent format '%s'\nappears more restrictive than '%s'\n"),
			ic->comment, format);
                  format = ic->comment; 
                }
            }
          else
            format = ic->comment;
        }
      else if (FUNC0 (ic->comment, "Field"))
        {
          if (field)
            FUNC8 (FUNC1("overlapping field %s->%s\n"),
		  ic->comment, field);
          field = ic->comment;
        }
    }

  /* An insn class matches anything that is the same followed by completers,
     except when the absence and presence of completers constitutes different
     instructions.  */
  if (ic->nsubs == 0 && ic->nxsubs == 0)
    {
      int is_mov = FUNC0 (idesc->name, "mov");
      int plain_mov = FUNC4 (idesc->name, "mov") == 0;
      int len = FUNC5(ic->name);

      resolved = ((FUNC6 (ic->name, idesc->name, len) == 0)
                  && (idesc->name[len] == '\0' 
                      || idesc->name[len] == '.'));

      /* All break, nop, and hint variations must match exactly.  */
      if (resolved &&
          (FUNC4 (ic->name, "break") == 0
           || FUNC4 (ic->name, "nop") == 0
	   || FUNC4 (ic->name, "hint") == 0))
        resolved = FUNC4 (ic->name, idesc->name) == 0;

      /* Assume restrictions in the FORMAT/FIELD negate resolution,
         unless specifically allowed by clauses in this block.  */
      if (resolved && field)
        {
          /* Check Field(sf)==sN against opcode sN.  */
          if (FUNC7(field, "(sf)==") != NULL)
            {
              char *sf;

              if ((sf = FUNC7 (idesc->name, ".s")) != 0)
		resolved = FUNC4 (sf + 1, FUNC7 (field, "==") + 2) == 0;
            }
          /* Check Field(lftype)==XXX.  */
          else if (FUNC7 (field, "(lftype)") != NULL)
            {
              if (FUNC7 (idesc->name, "fault") != NULL)
                resolved = FUNC7 (field, "fault") != NULL;
              else
                resolved = FUNC7 (field, "fault") == NULL;
            }
          /* Handle Field(ctype)==XXX.  */
          else if (FUNC7 (field, "(ctype)") != NULL)
            {
              if (FUNC7 (idesc->name, "or.andcm"))
                resolved = FUNC7 (field, "or.andcm") != NULL;
              else if (FUNC7 (idesc->name, "and.orcm"))
                resolved = FUNC7 (field, "and.orcm") != NULL;
              else if (FUNC7 (idesc->name, "orcm"))
                resolved = FUNC7 (field, "or orcm") != NULL;
              else if (FUNC7 (idesc->name, "or"))
                resolved = FUNC7 (field, "or orcm") != NULL;
              else if (FUNC7 (idesc->name, "andcm"))
                resolved = FUNC7 (field, "and andcm") != NULL;
              else if (FUNC7 (idesc->name, "and"))
                resolved = FUNC7 (field, "and andcm") != NULL;
              else if (FUNC7 (idesc->name, "unc"))
                resolved = FUNC7 (field, "unc") != NULL;
              else
                resolved = FUNC4 (field, "Field(ctype)==") == 0;
            }
        }

      if (resolved && format)
        {
          if (FUNC0 (idesc->name, "dep")
                   && FUNC7 (format, "I13") != NULL)
            resolved = idesc->operands[1] == IA64_OPND_IMM8;
          else if (FUNC0 (idesc->name, "chk")
                   && FUNC7 (format, "M21") != NULL)
            resolved = idesc->operands[0] == IA64_OPND_F2;
          else if (FUNC0 (idesc->name, "lfetch"))
            resolved = (FUNC7 (format, "M14 M15") != NULL
                        && (idesc->operands[1] == IA64_OPND_R2
                            || idesc->operands[1] == IA64_OPND_IMM9b));
          else if (FUNC0 (idesc->name, "br.call")
                   && FUNC7 (format, "B5") != NULL)
            resolved = idesc->operands[1] == IA64_OPND_B2;
          else if (FUNC0 (idesc->name, "br.call")
                   && FUNC7 (format, "B3") != NULL)
            resolved = idesc->operands[1] == IA64_OPND_TGT25c;
          else if (FUNC0 (idesc->name, "brp")
                   && FUNC7 (format, "B7") != NULL)
            resolved = idesc->operands[0] == IA64_OPND_B2;
          else if (FUNC4 (ic->name, "invala") == 0)
            resolved = FUNC4 (idesc->name, ic->name) == 0;
	  else if (FUNC0 (idesc->name, "st")
		   && (FUNC7 (format, "M5") != NULL
		       || FUNC7 (format, "M10") != NULL))
	    resolved = idesc->flags & IA64_OPCODE_POSTINC;
	  else if (FUNC0 (idesc->name, "ld")
		   && (FUNC7 (format, "M2 M3") != NULL
		       || FUNC7 (format, "M12") != NULL
		       || FUNC7 (format, "M7 M8") != NULL))
	    resolved = idesc->flags & IA64_OPCODE_POSTINC;
          else
            resolved = 0;
        }

      /* Misc brl variations ('.cond' is optional); 
         plain brl matches brl.cond.  */
      if (!resolved
          && (FUNC4 (idesc->name, "brl") == 0
              || FUNC0 (idesc->name, "brl."))
          && FUNC4 (ic->name, "brl.cond") == 0)
        {
          resolved = 1;
        }

      /* Misc br variations ('.cond' is optional).  */
      if (!resolved 
          && (FUNC4 (idesc->name, "br") == 0
              || FUNC0 (idesc->name, "br."))
          && FUNC4 (ic->name, "br.cond") == 0)
        {
          if (format)
            resolved = (FUNC7 (format, "B4") != NULL
                        && idesc->operands[0] == IA64_OPND_B2)
              || (FUNC7 (format, "B1") != NULL
                  && idesc->operands[0] == IA64_OPND_TGT25c);
          else
            resolved = 1;
        }

      /* probe variations.  */
      if (!resolved && FUNC0 (idesc->name, "probe"))
        {
          resolved = FUNC4 (ic->name, "probe") == 0 
            && !((FUNC7 (idesc->name, "fault") != NULL) 
                 ^ (format && FUNC7 (format, "M40") != NULL));
        }

      /* mov variations.  */
      if (!resolved && is_mov)
        {
          if (plain_mov)
            {
              /* mov alias for fmerge.  */
              if (FUNC4 (ic->name, "fmerge") == 0)
                {
                  resolved = idesc->operands[0] == IA64_OPND_F1
                    && idesc->operands[1] == IA64_OPND_F3;
                }
              /* mov alias for adds (r3 or imm14).  */
              else if (FUNC4 (ic->name, "adds") == 0)
                {
                  resolved = (idesc->operands[0] == IA64_OPND_R1
                              && (idesc->operands[1] == IA64_OPND_R3
                                  || (idesc->operands[1] == IA64_OPND_IMM14)));
                }
              /* mov alias for addl.  */
              else if (FUNC4 (ic->name, "addl") == 0)
                {
                  resolved = idesc->operands[0] == IA64_OPND_R1
                    && idesc->operands[1] == IA64_OPND_IMM22;
                }
            }

          /* Some variants of mov and mov.[im].  */
          if (!resolved && FUNC0 (ic->name, "mov_"))
	    resolved = FUNC2 (idesc, ic, format, field);
        }

      /* Keep track of this so we can flag any insn classes which aren't 
         mapped onto at least one real insn.  */
      if (resolved)
	ic->terminal_resolved = 1;
    }
  else for (i = 0; i < ic->nsubs; i++)
    {
      if (FUNC9 (idesc, ics[ic->subs[i]], format, field, notep))
        {
          int j;

          for (j = 0; j < ic->nxsubs; j++)
	    if (FUNC9 (idesc, ics[ic->xsubs[j]], NULL, NULL, NULL))
	      return 0;

          if (debug > 1)
            FUNC3 ("%s is in IC %s\n", idesc->name, ic->name);

          resolved = 1;
          break;
        }
    }
  
  /* If it's in this IC, add the IC note (if any) to the insn.  */
  if (resolved)
    {
      if (ic->note && notep)
        {
          if (*notep && *notep != ic->note)
	    FUNC8 (FUNC1("overwriting note %d with note %d (IC:%s)\n"),
		  *notep, ic->note, ic->name);

          *notep = ic->note;
        }
    }

  return resolved;
}