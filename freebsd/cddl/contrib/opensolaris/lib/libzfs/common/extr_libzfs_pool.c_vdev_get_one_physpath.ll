; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_vdev_get_one_physpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_vdev_get_one_physpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_PHYS_PATH = common dso_local global i32 0, align 4
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@EZFS_NOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64*)* @vdev_get_one_physpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_get_one_physpath(i32* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @ZPOOL_CONFIG_PHYS_PATH, align 4
  %17 = call i64 @nvlist_lookup_string(i32* %15, i32 %16, i8** %13)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EZFS_NODEVICE, align 4
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %4
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %11, align 8
  %26 = sub i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i64, i64* %10, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i64 @snprintf(i8* %33, i64 %34, i8* %35, i8* %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %38
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %21
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @EZFS_NOSPC, align 4
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %52, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
