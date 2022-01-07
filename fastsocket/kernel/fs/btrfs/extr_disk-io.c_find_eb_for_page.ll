; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_find_eb_for_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_find_eb_for_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, i32 }
%struct.extent_io_tree = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @find_eb_for_page(%struct.extent_io_tree* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca %struct.extent_io_tree*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = call i32 @page_offset(%struct.page* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %19, %18
  br label %24

24:                                               ; preds = %59, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.extent_buffer* @find_extent_buffer(%struct.extent_io_tree* %29, i32 %30, i32 0)
  store %struct.extent_buffer* %31, %struct.extent_buffer** %8, align 8
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %33 = icmp ne %struct.extent_buffer* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %42 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %45 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %51, %struct.extent_buffer** %4, align 8
  br label %66

52:                                               ; preds = %40, %34
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %54 = call i32 @free_extent_buffer(%struct.extent_buffer* %53)
  store %struct.extent_buffer* null, %struct.extent_buffer** %4, align 8
  br label %66

55:                                               ; preds = %28
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %65

59:                                               ; preds = %55
  %60 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  br label %24

65:                                               ; preds = %58, %24
  store %struct.extent_buffer* null, %struct.extent_buffer** %4, align 8
  br label %66

66:                                               ; preds = %65, %52, %50
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  ret %struct.extent_buffer* %67
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local %struct.extent_buffer* @find_extent_buffer(%struct.extent_io_tree*, i32, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
