#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct nfs4_readdir_arg {int count; int cookie; char verifier; int pgbase; int /*<<< orphan*/ * pages; } ;
struct dentry {TYPE_1__* d_parent; int /*<<< orphan*/  d_inode; } ;
typedef  char __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FATTR4_WORD0_FILEID ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 void* xdr_one ; 
 void* xdr_two ; 
 void* xdr_zero ; 

__attribute__((used)) static void FUNC8(u64 cookie, __be32 *verifier, struct dentry *dentry,
		struct nfs4_readdir_arg *readdir)
{
	__be32 *start, *p;

	FUNC0(readdir->count < 80);
	if (cookie > 2) {
		readdir->cookie = cookie;
		FUNC5(&readdir->verifier, verifier, sizeof(readdir->verifier));
		return;
	}

	readdir->cookie = 0;
	FUNC6(&readdir->verifier, 0, sizeof(readdir->verifier));
	if (cookie == 2)
		return;
	
	/*
	 * NFSv4 servers do not return entries for '.' and '..'
	 * Therefore, we fake these entries here.  We let '.'
	 * have cookie 0 and '..' have cookie 1.  Note that
	 * when talking to the server, we always send cookie 0
	 * instead of 1 or 2.
	 */
	start = p = FUNC3(*readdir->pages, KM_USER0);
	
	if (cookie == 0) {
		*p++ = xdr_one;                                  /* next */
		*p++ = xdr_zero;                   /* cookie, first word */
		*p++ = xdr_one;                   /* cookie, second word */
		*p++ = xdr_one;                             /* entry len */
		FUNC5(p, ".\0\0\0", 4);                        /* entry */
		p++;
		*p++ = xdr_one;                         /* bitmap length */
		*p++ = FUNC2(FATTR4_WORD0_FILEID);             /* bitmap */
		*p++ = FUNC2(8);              /* attribute buffer length */
		p = FUNC7(p, FUNC1(dentry->d_inode));
	}
	
	*p++ = xdr_one;                                  /* next */
	*p++ = xdr_zero;                   /* cookie, first word */
	*p++ = xdr_two;                   /* cookie, second word */
	*p++ = xdr_two;                             /* entry len */
	FUNC5(p, "..\0\0", 4);                         /* entry */
	p++;
	*p++ = xdr_one;                         /* bitmap length */
	*p++ = FUNC2(FATTR4_WORD0_FILEID);             /* bitmap */
	*p++ = FUNC2(8);              /* attribute buffer length */
	p = FUNC7(p, FUNC1(dentry->d_parent->d_inode));

	readdir->pgbase = (char *)p - (char *)start;
	readdir->count -= readdir->pgbase;
	FUNC4(start, KM_USER0);
}