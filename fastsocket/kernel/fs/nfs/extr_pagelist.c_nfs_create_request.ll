; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_create_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32, i32, i32, i32, i32, %struct.page*, %struct.nfs_lock_context* }
%struct.nfs_lock_context = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@NFS_CONTEXT_BAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context* %0, %struct.inode* %1, %struct.page* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_open_context*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_page*, align 8
  %13 = alloca %struct.nfs_lock_context*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @NFS_CONTEXT_BAD, align 4
  %15 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %16 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @EBADF, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.nfs_page* @ERR_PTR(i32 %21)
  store %struct.nfs_page* %22, %struct.nfs_page** %6, align 8
  br label %76

23:                                               ; preds = %5
  %24 = call %struct.nfs_page* (...) @nfs_page_alloc()
  store %struct.nfs_page* %24, %struct.nfs_page** %12, align 8
  %25 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %26 = icmp eq %struct.nfs_page* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.nfs_page* @ERR_PTR(i32 %29)
  store %struct.nfs_page* %30, %struct.nfs_page** %6, align 8
  br label %76

31:                                               ; preds = %23
  %32 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %33 = call %struct.nfs_lock_context* @nfs_get_lock_context(%struct.nfs_open_context* %32)
  store %struct.nfs_lock_context* %33, %struct.nfs_lock_context** %13, align 8
  %34 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %35 = call i64 @IS_ERR(%struct.nfs_lock_context* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %39 = call i32 @nfs_page_free(%struct.nfs_page* %38)
  %40 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %41 = call %struct.nfs_page* @ERR_CAST(%struct.nfs_lock_context* %40)
  store %struct.nfs_page* %41, %struct.nfs_page** %6, align 8
  br label %76

42:                                               ; preds = %31
  %43 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %44 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %45 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %44, i32 0, i32 7
  store %struct.nfs_lock_context* %43, %struct.nfs_lock_context** %45, align 8
  %46 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %47 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %46, i32 0, i32 0
  %48 = call i32 @nfs_iocounter_inc(i32* %47)
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %51 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %50, i32 0, i32 6
  store %struct.page* %49, %struct.page** %51, align 8
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = getelementptr inbounds %struct.page, %struct.page* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %56 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = call i32 @page_cache_get(%struct.page* %57)
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %61 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %64 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %67 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %69 = call i32 @get_nfs_open_context(%struct.nfs_open_context* %68)
  %70 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %71 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %73 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %72, i32 0, i32 3
  %74 = call i32 @kref_init(i32* %73)
  %75 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  store %struct.nfs_page* %75, %struct.nfs_page** %6, align 8
  br label %76

76:                                               ; preds = %42, %37, %27, %19
  %77 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  ret %struct.nfs_page* %77
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.nfs_page* @ERR_PTR(i32) #1

declare dso_local %struct.nfs_page* @nfs_page_alloc(...) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(%struct.nfs_open_context*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @nfs_page_free(%struct.nfs_page*) #1

declare dso_local %struct.nfs_page* @ERR_CAST(%struct.nfs_lock_context*) #1

declare dso_local i32 @nfs_iocounter_inc(i32*) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @get_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
