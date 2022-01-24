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
typedef  int UCHAR ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int* FUNC0 (int*,...) ; 
 scalar_t__ FUNC1 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,...) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*) ; 
 int FUNC6 (int*) ; 

__attribute__((used)) static int FUNC7(UCHAR *string, UCHAR *dest,UCHAR *source)
{
  UCHAR buf1[100];
  UCHAR buf2[100];
  UCHAR *start_p=NULL,*end_p=NULL,*tmp_p=NULL;
  int ii;

    FUNC3(buf1,0,100);
    FUNC4(buf1, string);
    FUNC4(buf1, "=");
    source+=FUNC6(buf1);

//find target string start point
    if((start_p = FUNC0(source,buf1))==NULL)
	return FALSE;

//check if current config line is marked by "#" ??
for(ii=1;;ii++) {
  if(FUNC1(start_p-ii,"\n",1)==0)
      break;
  if(FUNC1(start_p-ii,"#",1)==0)
      return FALSE;
}

//find target string end point
     if((end_p = FUNC0(start_p,"\n"))==NULL) {       //cann't find "\n",but don't care
          end_p=start_p+FUNC6(start_p);   //no include "\n"
       }

   FUNC3(buf2,0,100);
   FUNC2(buf2,start_p,end_p-start_p);    //get the tartget line
   buf2[end_p-start_p]='\0';

   //find value
   if((start_p = FUNC0(buf2,"="))==NULL)
      return FALSE;
   FUNC3(buf1,0,100);
   FUNC5(buf1,start_p+1);

  //except space
  tmp_p = buf1;
  while(*tmp_p != 0x00) {
  	if(*tmp_p==' ')
	    tmp_p++;
         else
	  break;
  }

   FUNC2(dest,tmp_p,FUNC6(tmp_p));
 return TRUE;
}