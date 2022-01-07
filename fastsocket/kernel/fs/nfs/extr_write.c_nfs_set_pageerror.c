
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct TYPE_2__ {int host; } ;


 int nfs_zap_mapping (int ,TYPE_1__*) ;

__attribute__((used)) static void nfs_set_pageerror(struct page *page)
{
 nfs_zap_mapping(page->mapping->host, page->mapping);
}
