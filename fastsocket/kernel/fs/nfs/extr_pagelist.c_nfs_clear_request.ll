; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_clear_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_clear_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { %struct.nfs_open_context*, %struct.nfs_lock_context*, %struct.page* }
%struct.nfs_open_context = type { i32 }
%struct.nfs_lock_context = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*)* @nfs_clear_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_clear_request(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.nfs_open_context*, align 8
  %5 = alloca %struct.nfs_lock_context*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %6 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %7 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %6, i32 0, i32 2
  %8 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %8, %struct.page** %3, align 8
  %9 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %10 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %9, i32 0, i32 0
  %11 = load %struct.nfs_open_context*, %struct.nfs_open_context** %10, align 8
  store %struct.nfs_open_context* %11, %struct.nfs_open_context** %4, align 8
  %12 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %12, i32 0, i32 1
  %14 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  store %struct.nfs_lock_context* %14, %struct.nfs_lock_context** %5, align 8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = icmp ne %struct.page* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @page_cache_release(%struct.page* %18)
  %20 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %20, i32 0, i32 2
  store %struct.page* null, %struct.page** %21, align 8
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %24 = icmp ne %struct.nfs_lock_context* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %26, i32 0, i32 0
  %28 = call i32 @nfs_iocounter_dec(i32* %27)
  %29 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %30 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %29)
  %31 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %32 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %31, i32 0, i32 1
  store %struct.nfs_lock_context* null, %struct.nfs_lock_context** %32, align 8
  br label %33

33:                                               ; preds = %25, %22
  %34 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %35 = icmp ne %struct.nfs_open_context* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %38 = call i32 @put_nfs_open_context(%struct.nfs_open_context* %37)
  %39 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %40 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %39, i32 0, i32 0
  store %struct.nfs_open_context* null, %struct.nfs_open_context** %40, align 8
  br label %41

41:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @nfs_iocounter_dec(i32*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

declare dso_local i32 @put_nfs_open_context(%struct.nfs_open_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
