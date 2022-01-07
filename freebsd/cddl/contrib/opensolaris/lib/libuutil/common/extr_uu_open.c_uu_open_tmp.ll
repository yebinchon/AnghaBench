; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_open.c_uu_open_tmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_open.c_uu_open_tmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/uu%lld\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uu_open_tmp(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = call i8* @uu_zalloc(i32 %8)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (...) @gethrtime()
  %19 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @O_CREAT, align 4
  %22 = load i32, i32* @O_EXCL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @O_RDWR, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @open(i8* %20, i32 %25, i32 384)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %14
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EEXIST, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %14
  br label %35

34:                                               ; preds = %29
  br label %14

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @unlink(i8* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @uu_free(i8* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i8* @uu_zalloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @uu_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
