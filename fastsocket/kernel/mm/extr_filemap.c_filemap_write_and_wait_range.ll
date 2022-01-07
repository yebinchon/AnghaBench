; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_filemap_write_and_wait_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_filemap_write_and_wait_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i64 }

@WB_SYNC_ALL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filemap_write_and_wait_range(%struct.address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.address_space*, %struct.address_space** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @WB_SYNC_ALL, align 4
  %18 = call i32 @__filemap_fdatawrite_range(%struct.address_space* %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = load %struct.address_space*, %struct.address_space** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = call i32 @wait_on_page_writeback_range(%struct.address_space* %24, i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %23
  br label %37

37:                                               ; preds = %36, %13
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @__filemap_fdatawrite_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @wait_on_page_writeback_range(%struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
