
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int wait; scalar_t__ flag; int * log; scalar_t__ clsn; int * data; scalar_t__ lsn; scalar_t__ lid; } ;


 int META_free ;
 int init_waitqueue_head (int *) ;
 int set_bit (int ,scalar_t__*) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct metapage *mp = (struct metapage *)foo;

 mp->lid = 0;
 mp->lsn = 0;
 mp->flag = 0;
 mp->data = ((void*)0);
 mp->clsn = 0;
 mp->log = ((void*)0);
 set_bit(META_free, &mp->flag);
 init_waitqueue_head(&mp->wait);
}
