; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pgarray_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pgarray_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page_array = type { i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_pgarray_set(%struct.nfs_page_array* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_page_array*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs_page_array* %0, %struct.nfs_page_array** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.nfs_page_array*, %struct.nfs_page_array** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.nfs_page_array*, %struct.nfs_page_array** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp ule i32 %8, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.nfs_page_array*, %struct.nfs_page_array** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.nfs_page_array*, %struct.nfs_page_array** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kcalloc(i32 %21, i32 8, i32 %22)
  %24 = load %struct.nfs_page_array*, %struct.nfs_page_array** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.nfs_page_array*, %struct.nfs_page_array** %3, align 8
  %27 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load %struct.nfs_page_array*, %struct.nfs_page_array** %3, align 8
  %32 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %20
  br label %34

34:                                               ; preds = %33, %14
  %35 = load %struct.nfs_page_array*, %struct.nfs_page_array** %3, align 8
  %36 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
