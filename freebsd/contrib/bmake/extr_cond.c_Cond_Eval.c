
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct If {char* form; int formlen; } ;
typedef enum if_states { ____Placeholder_if_states } if_states ;
typedef scalar_t__ Boolean ;


 int COND_INVALID ;
 int COND_PARSE ;
 int COND_SKIP ;
 int Cond_EvalExpression (struct If const*,char*,scalar_t__*,int,scalar_t__) ;
 scalar_t__ FALSE ;
 unsigned int MAXIF ;
 scalar_t__ MAXIF_BUMP ;
 int PARSE_FATAL ;
 int PARSE_WARNING ;
 int Parse_Error (int,char*) ;
 scalar_t__ TRUE ;
 int* bmake_malloc (unsigned int) ;
 int* bmake_realloc (int*,unsigned int) ;
 size_t cond_depth ;
 size_t cond_min_depth ;
 struct If* ifs ;
 scalar_t__ istoken (char*,char*,int) ;

int
Cond_Eval(char *line)
{


    enum if_states {
 IF_ACTIVE,
 ELSE_ACTIVE,
 SEARCH_FOR_ELIF,
 SKIP_TO_ELSE,
 SKIP_TO_ENDIF
    };
    static enum if_states *cond_state = ((void*)0);
    static unsigned int max_if_depth = 128;

    const struct If *ifp;
    Boolean isElif;
    Boolean value;
    int level;
    enum if_states state;

    level = PARSE_FATAL;
    if (!cond_state) {
 cond_state = bmake_malloc(max_if_depth * sizeof(*cond_state));
 cond_state[0] = IF_ACTIVE;
    }

    for (line++; *line == ' ' || *line == '\t'; line++)
 continue;


    if (line[0] == 'e') {
 if (line[1] != 'l') {
     if (!istoken(line + 1, "ndif", 4))
  return COND_INVALID;

     if (cond_depth == cond_min_depth) {
  Parse_Error(level, "if-less endif");
  return COND_PARSE;
     }

     cond_depth--;
     return cond_state[cond_depth] <= ELSE_ACTIVE ? COND_PARSE : COND_SKIP;
 }


 line += 2;
 if (istoken(line, "se", 2)) {

     if (cond_depth == cond_min_depth) {
  Parse_Error(level, "if-less else");
  return COND_PARSE;
     }

     state = cond_state[cond_depth];
     switch (state) {
     case SEARCH_FOR_ELIF:
  state = ELSE_ACTIVE;
  break;
     case ELSE_ACTIVE:
     case SKIP_TO_ENDIF:
  Parse_Error(PARSE_WARNING, "extra else");

     default:
     case IF_ACTIVE:
     case SKIP_TO_ELSE:
  state = SKIP_TO_ENDIF;
  break;
     }
     cond_state[cond_depth] = state;
     return state <= ELSE_ACTIVE ? COND_PARSE : COND_SKIP;
 }

 isElif = TRUE;
    } else
 isElif = FALSE;

    if (line[0] != 'i' || line[1] != 'f')

 return COND_INVALID;





    line += 2;
    for (ifp = ifs; ; ifp++) {
 if (ifp->form == ((void*)0))
     return COND_INVALID;
 if (istoken(ifp->form, line, ifp->formlen)) {
     line += ifp->formlen;
     break;
 }
    }



    if (isElif) {
 if (cond_depth == cond_min_depth) {
     Parse_Error(level, "if-less elif");
     return COND_PARSE;
 }
 state = cond_state[cond_depth];
 if (state == SKIP_TO_ENDIF || state == ELSE_ACTIVE) {
     Parse_Error(PARSE_WARNING, "extra elif");
     cond_state[cond_depth] = SKIP_TO_ENDIF;
     return COND_SKIP;
 }
 if (state != SEARCH_FOR_ELIF) {

     cond_state[cond_depth] = SKIP_TO_ELSE;
     return COND_SKIP;
 }
    } else {

 if (cond_depth + 1 >= max_if_depth) {





     max_if_depth += 32;
     cond_state = bmake_realloc(cond_state, max_if_depth *
  sizeof(*cond_state));
 }
 state = cond_state[cond_depth];
 cond_depth++;
 if (state > ELSE_ACTIVE) {

     cond_state[cond_depth] = SKIP_TO_ELSE;
     return COND_SKIP;
 }
    }


    if (Cond_EvalExpression(ifp, line, &value, 1, TRUE) == COND_INVALID) {


 cond_state[cond_depth] = SKIP_TO_ELSE;
 return COND_SKIP;
    }

    if (!value) {
 cond_state[cond_depth] = SEARCH_FOR_ELIF;
 return COND_SKIP;
    }
    cond_state[cond_depth] = IF_ACTIVE;
    return COND_PARSE;
}
