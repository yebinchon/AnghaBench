; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_dma_debug_fs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_dma_debug_fs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"dma-api\00", align 1
@dma_debug_dent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"DMA-API: can not create debugfs directory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@global_disable = common dso_local global i32 0, align 4
@global_disable_dent = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"error_count\00", align 1
@error_count = common dso_local global i32 0, align 4
@error_count_dent = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"all_errors\00", align 1
@show_all_errors = common dso_local global i32 0, align 4
@show_all_errors_dent = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"num_errors\00", align 1
@show_num_errors = common dso_local global i32 0, align 4
@show_num_errors_dent = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"num_free_entries\00", align 1
@num_free_entries = common dso_local global i32 0, align 4
@num_free_entries_dent = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"min_free_entries\00", align 1
@min_free_entries = common dso_local global i32 0, align 4
@min_free_entries_dent = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"driver_filter\00", align 1
@filter_fops = common dso_local global i32 0, align 4
@filter_dent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dma_debug_fs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_debug_fs_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %2, i32* @dma_debug_dent, align 4
  %3 = load i32, i32* @dma_debug_dent, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %57

9:                                                ; preds = %0
  %10 = load i32, i32* @dma_debug_dent, align 4
  %11 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %10, i32* @global_disable)
  store i32 %11, i32* @global_disable_dent, align 4
  %12 = load i32, i32* @global_disable_dent, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %52

15:                                               ; preds = %9
  %16 = load i32, i32* @dma_debug_dent, align 4
  %17 = call i8* @debugfs_create_u32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %16, i32* @error_count)
  store i8* %17, i8** @error_count_dent, align 8
  %18 = load i8*, i8** @error_count_dent, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %52

21:                                               ; preds = %15
  %22 = load i32, i32* @dma_debug_dent, align 4
  %23 = call i8* @debugfs_create_u32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 420, i32 %22, i32* @show_all_errors)
  store i8* %23, i8** @show_all_errors_dent, align 8
  %24 = load i8*, i8** @show_all_errors_dent, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %52

27:                                               ; preds = %21
  %28 = load i32, i32* @dma_debug_dent, align 4
  %29 = call i8* @debugfs_create_u32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 420, i32 %28, i32* @show_num_errors)
  store i8* %29, i8** @show_num_errors_dent, align 8
  %30 = load i8*, i8** @show_num_errors_dent, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %52

33:                                               ; preds = %27
  %34 = load i32, i32* @dma_debug_dent, align 4
  %35 = call i8* @debugfs_create_u32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 292, i32 %34, i32* @num_free_entries)
  store i8* %35, i8** @num_free_entries_dent, align 8
  %36 = load i8*, i8** @num_free_entries_dent, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %52

39:                                               ; preds = %33
  %40 = load i32, i32* @dma_debug_dent, align 4
  %41 = call i8* @debugfs_create_u32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 292, i32 %40, i32* @min_free_entries)
  store i8* %41, i8** @min_free_entries_dent, align 8
  %42 = load i8*, i8** @min_free_entries_dent, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @dma_debug_dent, align 4
  %47 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 420, i32 %46, i32* null, i32* @filter_fops)
  store i32 %47, i32* @filter_dent, align 4
  %48 = load i32, i32* @filter_dent, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %1, align 4
  br label %57

52:                                               ; preds = %50, %44, %38, %32, %26, %20, %14
  %53 = load i32, i32* @dma_debug_dent, align 4
  %54 = call i32 @debugfs_remove_recursive(i32 %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %52, %51, %5
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, i32, i32*) #1

declare dso_local i8* @debugfs_create_u32(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
