; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_swsusp_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_swsusp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.swap_map_handle = type { i32 }
%struct.snapshot_handle = type { i32 }
%struct.swsusp_info = type { i64 }

@swsusp_header = common dso_local global %struct.TYPE_2__* null, align 8
@resume_bdev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PM: Image device not initialised\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"PM: Image successfully loaded\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PM: Error %d resuming\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swsusp_read(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.swap_map_handle, align 4
  %6 = alloca %struct.snapshot_handle, align 4
  %7 = alloca %struct.swsusp_info*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @swsusp_header, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %3, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @resume_bdev, align 4
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @resume_bdev, align 4
  %18 = call i32 @PTR_ERR(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = call i32 @memset(%struct.snapshot_handle* %6, i32 0, i32 4)
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @snapshot_write_next(%struct.snapshot_handle* %6, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %33, %31 ]
  store i32 %35, i32* %2, align 4
  br label %70

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @data_of(i32 %38)
  %40 = inttoptr i64 %39 to %struct.swsusp_info*
  store %struct.swsusp_info* %40, %struct.swsusp_info** %7, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @swsusp_header, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @get_swap_reader(%struct.swap_map_handle* %5, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load %struct.swsusp_info*, %struct.swsusp_info** %7, align 8
  %49 = call i32 @swap_read_page(%struct.swap_map_handle* %5, %struct.swsusp_info* %48, i32* null)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.swsusp_info*, %struct.swsusp_info** %7, align 8
  %55 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @load_image(%struct.swap_map_handle* %5, %struct.snapshot_handle* %6, i64 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = call i32 @release_swap_reader(%struct.swap_map_handle* %5)
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %63
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %34, %15
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @memset(%struct.snapshot_handle*, i32, i32) #1

declare dso_local i32 @snapshot_write_next(%struct.snapshot_handle*, i32) #1

declare dso_local i64 @data_of(i32) #1

declare dso_local i32 @get_swap_reader(%struct.swap_map_handle*, i32) #1

declare dso_local i32 @swap_read_page(%struct.swap_map_handle*, %struct.swsusp_info*, i32*) #1

declare dso_local i32 @load_image(%struct.swap_map_handle*, %struct.snapshot_handle*, i64) #1

declare dso_local i32 @release_swap_reader(%struct.swap_map_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
