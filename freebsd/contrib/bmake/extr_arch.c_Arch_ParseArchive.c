
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef scalar_t__ ReturnStatus ;
typedef int Lst ;
typedef TYPE_1__ GNode ;
typedef scalar_t__ Boolean ;


 int Dir_Expand (char*,int ,int ) ;
 scalar_t__ Dir_HasWildcards (char*) ;
 scalar_t__ FAILURE ;
 scalar_t__ FALSE ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 scalar_t__ Lst_DeQueue (int ) ;
 int Lst_Destroy (int ,int *) ;
 int Lst_Init (scalar_t__) ;
 int Lst_IsEmpty (int ) ;
 size_t MAXPATHLEN ;
 int OP_ARCHV ;
 scalar_t__ SUCCESS ;
 int TARG_CREATE ;
 scalar_t__ TRUE ;
 TYPE_1__* Targ_FindNode (char*,int ) ;
 int VARF_UNDEFERR ;
 int VARF_WANTRES ;
 char* Var_Parse (char*,TYPE_1__*,int,int*,void**) ;
 char* Var_Subst (int *,char*,TYPE_1__*,int) ;
 char* bmake_malloc (size_t) ;
 char* bmake_realloc (char*,size_t) ;
 int dirSearchPath ;
 int free (char*) ;
 scalar_t__ isspace (unsigned char) ;
 int printf (char*) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* var_Error ;

ReturnStatus
Arch_ParseArchive(char **linePtr, Lst nodeLst, GNode *ctxt)
{
    char *cp;
    GNode *gn;
    char *libName;
    char *memName;
    char *nameBuf;
    char saveChar;
    Boolean subLibName;


    libName = *linePtr;

    subLibName = FALSE;

    for (cp = libName; *cp != '(' && *cp != '\0'; cp++) {
 if (*cp == '$') {




     int length;
     void *freeIt;
     char *result;

     result = Var_Parse(cp, ctxt, VARF_UNDEFERR|VARF_WANTRES,
          &length, &freeIt);
     free(freeIt);

     if (result == var_Error) {
  return(FAILURE);
     } else {
  subLibName = TRUE;
     }

     cp += length-1;
 }
    }

    *cp++ = '\0';
    if (subLibName) {
 libName = Var_Subst(((void*)0), libName, ctxt, VARF_UNDEFERR|VARF_WANTRES);
    }


    for (;;) {





 Boolean doSubst = FALSE;

 while (*cp != '\0' && *cp != ')' && isspace ((unsigned char)*cp)) {
     cp++;
 }
 memName = cp;
 while (*cp != '\0' && *cp != ')' && !isspace ((unsigned char)*cp)) {
     if (*cp == '$') {




  int length;
  void *freeIt;
  char *result;

  result = Var_Parse(cp, ctxt, VARF_UNDEFERR|VARF_WANTRES,
       &length, &freeIt);
  free(freeIt);

  if (result == var_Error) {
      return(FAILURE);
  } else {
      doSubst = TRUE;
  }

  cp += length;
     } else {
  cp++;
     }
 }






 if (*cp == '\0') {
     printf("No closing parenthesis in archive specification\n");
     return (FAILURE);
 }




 if (cp == memName) {
     break;
 }

 saveChar = *cp;
 *cp = '\0';
 if (doSubst) {
     char *buf;
     char *sacrifice;
     char *oldMemName = memName;
     size_t sz;

     memName = Var_Subst(((void*)0), memName, ctxt,
    VARF_UNDEFERR|VARF_WANTRES);






     sz = strlen(memName)+strlen(libName)+3;
     buf = sacrifice = bmake_malloc(sz);

     snprintf(buf, sz, "%s(%s)", libName, memName);

     if (strchr(memName, '$') && strcmp(memName, oldMemName) == 0) {





  gn = Targ_FindNode(buf, TARG_CREATE);

  if (gn == ((void*)0)) {
      free(buf);
      return(FAILURE);
  } else {
      gn->type |= OP_ARCHV;
      (void)Lst_AtEnd(nodeLst, gn);
  }
     } else if (Arch_ParseArchive(&sacrifice, nodeLst, ctxt)!=SUCCESS) {




  free(buf);
  return(FAILURE);
     }



     free(buf);
 } else if (Dir_HasWildcards(memName)) {
     Lst members = Lst_Init(FALSE);
     char *member;
     size_t sz = MAXPATHLEN, nsz;
     nameBuf = bmake_malloc(sz);

     Dir_Expand(memName, dirSearchPath, members);
     while (!Lst_IsEmpty(members)) {
  member = (char *)Lst_DeQueue(members);
  nsz = strlen(libName) + strlen(member) + 3;
  if (sz > nsz)
      nameBuf = bmake_realloc(nameBuf, sz = nsz * 2);

  snprintf(nameBuf, sz, "%s(%s)", libName, member);
  free(member);
  gn = Targ_FindNode(nameBuf, TARG_CREATE);
  if (gn == ((void*)0)) {
      free(nameBuf);
      return (FAILURE);
  } else {







      gn->type |= OP_ARCHV;
      (void)Lst_AtEnd(nodeLst, gn);
  }
     }
     Lst_Destroy(members, ((void*)0));
     free(nameBuf);
 } else {
     size_t sz = strlen(libName) + strlen(memName) + 3;
     nameBuf = bmake_malloc(sz);
     snprintf(nameBuf, sz, "%s(%s)", libName, memName);
     gn = Targ_FindNode(nameBuf, TARG_CREATE);
     free(nameBuf);
     if (gn == ((void*)0)) {
  return (FAILURE);
     } else {







  gn->type |= OP_ARCHV;
  (void)Lst_AtEnd(nodeLst, gn);
     }
 }
 if (doSubst) {
     free(memName);
 }

 *cp = saveChar;
    }




    if (subLibName) {
 free(libName);
    }






    do {
 cp++;
    } while (*cp != '\0' && isspace ((unsigned char)*cp));

    *linePtr = cp;
    return (SUCCESS);
}
