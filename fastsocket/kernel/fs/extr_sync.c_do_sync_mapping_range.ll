; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_sync.c_do_sync_mapping_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_sync.c_do_sync_mapping_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WAIT_BEFORE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WRITE = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WAIT_AFTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_sync_mapping_range(%struct.address_space* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.address_space*, %struct.address_space** %5, align 8
  %11 = icmp ne %struct.address_space* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  br label %63

15:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SYNC_FILE_RANGE_WAIT_BEFORE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.address_space*, %struct.address_space** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = call i32 @wait_on_page_writeback_range(%struct.address_space* %21, i32 %24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %63

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SYNC_FILE_RANGE_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.address_space*, %struct.address_space** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @WB_SYNC_ALL, align 4
  %43 = call i32 @__filemap_fdatawrite_range(%struct.address_space* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %63

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SYNC_FILE_RANGE_WAIT_AFTER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.address_space*, %struct.address_space** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = call i32 @wait_on_page_writeback_range(%struct.address_space* %54, i32 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %53, %48
  br label %63

63:                                               ; preds = %62, %46, %31, %12
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @wait_on_page_writeback_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @__filemap_fdatawrite_range(%struct.address_space*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
