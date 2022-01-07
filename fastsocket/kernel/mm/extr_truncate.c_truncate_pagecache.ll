; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_pagecache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_pagecache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @truncate_pagecache(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.address_space*, %struct.address_space** %10, align 8
  store %struct.address_space* %11, %struct.address_space** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i32 @round_up(i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.address_space*, %struct.address_space** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @unmap_mapping_range(%struct.address_space* %15, i32 %16, i32 0, i32 1)
  %18 = load %struct.address_space*, %struct.address_space** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @truncate_inode_pages(%struct.address_space* %18, i32 %19)
  %21 = load %struct.address_space*, %struct.address_space** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @unmap_mapping_range(%struct.address_space* %21, i32 %22, i32 0, i32 1)
  ret void
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
