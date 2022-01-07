
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_cookie {int inode; int * qid; int * fscache; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct v9fs_cookie *vcookie = (struct v9fs_cookie *) foo;
 vcookie->fscache = ((void*)0);
 vcookie->qid = ((void*)0);
 inode_init_once(&vcookie->inode);
}
