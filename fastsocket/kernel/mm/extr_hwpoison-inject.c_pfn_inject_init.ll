; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hwpoison-inject.c_pfn_inject_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hwpoison-inject.c_pfn_inject_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"hwpoison\00", align 1
@hwpoison_dir = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"corrupt-pfn\00", align 1
@hwpoison_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"unpoison-pfn\00", align 1
@unpoison_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"corrupt-filter-enable\00", align 1
@hwpoison_filter_enable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"corrupt-filter-dev-major\00", align 1
@hwpoison_filter_dev_major = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"corrupt-filter-dev-minor\00", align 1
@hwpoison_filter_dev_minor = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"corrupt-filter-flags-mask\00", align 1
@hwpoison_filter_flags_mask = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"corrupt-filter-flags-value\00", align 1
@hwpoison_filter_flags_value = common dso_local global i32 0, align 4
@hwpoison_filter_memcg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pfn_inject_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfn_inject_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dentry*, align 8
  %3 = call i32* @debugfs_create_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %3, i32** @hwpoison_dir, align 8
  %4 = load i32*, i32** @hwpoison_dir, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %56

9:                                                ; preds = %0
  %10 = load i32*, i32** @hwpoison_dir, align 8
  %11 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 384, i32* %10, i32* null, i32* @hwpoison_fops)
  store %struct.dentry* %11, %struct.dentry** %2, align 8
  %12 = load %struct.dentry*, %struct.dentry** %2, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %52

15:                                               ; preds = %9
  %16 = load i32*, i32** @hwpoison_dir, align 8
  %17 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 384, i32* %16, i32* null, i32* @unpoison_fops)
  store %struct.dentry* %17, %struct.dentry** %2, align 8
  %18 = load %struct.dentry*, %struct.dentry** %2, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %52

21:                                               ; preds = %15
  %22 = load i32*, i32** @hwpoison_dir, align 8
  %23 = call %struct.dentry* @debugfs_create_u32(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 384, i32* %22, i32* @hwpoison_filter_enable)
  store %struct.dentry* %23, %struct.dentry** %2, align 8
  %24 = load %struct.dentry*, %struct.dentry** %2, align 8
  %25 = icmp ne %struct.dentry* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %52

27:                                               ; preds = %21
  %28 = load i32*, i32** @hwpoison_dir, align 8
  %29 = call %struct.dentry* @debugfs_create_u32(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 384, i32* %28, i32* @hwpoison_filter_dev_major)
  store %struct.dentry* %29, %struct.dentry** %2, align 8
  %30 = load %struct.dentry*, %struct.dentry** %2, align 8
  %31 = icmp ne %struct.dentry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %52

33:                                               ; preds = %27
  %34 = load i32*, i32** @hwpoison_dir, align 8
  %35 = call %struct.dentry* @debugfs_create_u32(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 384, i32* %34, i32* @hwpoison_filter_dev_minor)
  store %struct.dentry* %35, %struct.dentry** %2, align 8
  %36 = load %struct.dentry*, %struct.dentry** %2, align 8
  %37 = icmp ne %struct.dentry* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %52

39:                                               ; preds = %33
  %40 = load i32*, i32** @hwpoison_dir, align 8
  %41 = call %struct.dentry* @debugfs_create_u64(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 384, i32* %40, i32* @hwpoison_filter_flags_mask)
  store %struct.dentry* %41, %struct.dentry** %2, align 8
  %42 = load %struct.dentry*, %struct.dentry** %2, align 8
  %43 = icmp ne %struct.dentry* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %52

45:                                               ; preds = %39
  %46 = load i32*, i32** @hwpoison_dir, align 8
  %47 = call %struct.dentry* @debugfs_create_u64(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 384, i32* %46, i32* @hwpoison_filter_flags_value)
  store %struct.dentry* %47, %struct.dentry** %2, align 8
  %48 = load %struct.dentry*, %struct.dentry** %2, align 8
  %49 = icmp ne %struct.dentry* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %1, align 4
  br label %56

52:                                               ; preds = %50, %44, %38, %32, %26, %20, %14
  %53 = call i32 (...) @pfn_inject_exit()
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %52, %51, %6
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32* @debugfs_create_dir(i8*, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_u32(i8*, i32, i32*, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_u64(i8*, i32, i32*, i32*) #1

declare dso_local i32 @pfn_inject_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
