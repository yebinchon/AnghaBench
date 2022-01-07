
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* type; struct TYPE_6__* scope; } ;
struct TYPE_5__ {int first_line; int first_column; int last_line; int last_column; } ;
struct TYPE_4__ {TYPE_3__* scope; TYPE_3__* type; TYPE_3__* dlist; TYPE_3__* decl; TYPE_3__* code; TYPE_3__* expr; TYPE_3__* id; } ;


 int free (TYPE_3__*) ;
 TYPE_2__* loc ;
 char* msg ;
 int printf (char*,char*,int,int,int,int) ;
 int psymb ;
 TYPE_1__* val ;

__attribute__((used)) static void
YYDESTRUCT_DECL()
{
    switch (psymb)
    {
 case 43:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 45:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 42:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 47:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 37:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 257:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 258:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 40:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 91:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 46:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 259:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).id); }
 break;
 case 260:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).expr); }
 break;
 case 261:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 262:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 263:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 264:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 265:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 266:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 267:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 268:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 269:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 59:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 44:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 41:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 93:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 123:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 125:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 270:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 271:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 272:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).expr); }
 break;
 case 273:
 {
    printf("%s accessed by symbol \"decl\" (case s.b. 273) @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).decl->scope); free((*val).decl->type); }
 break;
 case 274:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 275:
 { printf("%s accessed by symbol with no type @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
                                                         }
 break;
 case 276:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).code); }
 break;
 case 277:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).code); }
 break;
 case 278:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).code); }
 break;
 case 279:
 { printf("%s accessed by symbol with type <decl> (case s.b. 279 & 280) @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).decl); }
 break;
 case 280:
 { printf("%s accessed by symbol with type <decl> (case s.b. 279 & 280) @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).decl); }
 break;
 case 281:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).type); }
 break;
 case 282:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).type); }
 break;
 case 283:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).type); }
 break;
 case 284:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).type); }
 break;
 case 285:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).type); }
 break;
 case 286:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).scope); }
 break;
 case 287:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).dlist); }
 break;
 case 288:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).dlist); }
 break;
 case 289:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).scope); }
 break;
 case 290:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).scope); }
 break;
 case 291:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).scope); }
 break;
 case 292:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).scope); }
 break;
 case 293:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).type); }
 break;
 case 294:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).scope); }
 break;
 case 295:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).type); }
 break;
 case 296:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).scope); }
 break;
 case 297:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).scope); }
 break;
 case 298:
 { printf("%s accessed by symbol of any type other than <decl>  @ position[%d,%d..%d,%d]\n",
    msg,
    (*loc).first_line, (*loc).first_column,
    (*loc).last_line, (*loc).last_column);
    free((*val).scope); }
 break;
 }
}
