; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_pagecache_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_pagecache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @truncate_pagecache_range(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i64 @round_up(i64 %13, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 1, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i64 @round_down(i32 %18, i32 %19)
  %21 = sub nsw i64 %20, 1
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.address_space*, %struct.address_space** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 1, %28
  %30 = load i64, i64* %8, align 8
  %31 = sub nsw i64 %29, %30
  %32 = call i32 @unmap_mapping_range(%struct.address_space* %26, i64 %27, i64 %31, i32 0)
  br label %33

33:                                               ; preds = %25, %3
  %34 = load %struct.address_space*, %struct.address_space** %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @truncate_inode_pages_range(%struct.address_space* %34, i64 %35, i64 %36)
  ret void
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i64 @round_down(i32, i32) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i64, i64, i32) #1

declare dso_local i32 @truncate_inode_pages_range(%struct.address_space*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
