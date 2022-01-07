; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_fow.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_fow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@lstrval = common dso_local global i32 0, align 4
@artyp = common dso_local global i64 0, align 8
@ISREG = common dso_local global i64 0, align 8
@arfd = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@arsb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Forward positioning operation on archive failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar_fow(i64 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load i32, i32* @lstrval, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @lstrval, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %12
  %18 = load i64, i64* @artyp, align 8
  %19 = load i64, i64* @ISREG, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %53

22:                                               ; preds = %17
  %23 = load i32, i32* @arfd, align 4
  %24 = load i32, i32* @SEEK_CUR, align 4
  %25 = call i64 @lseek(i32 %23, i64 0, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arsb, i32 0, i32 0), align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arsb, i32 0, i32 0), align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arsb, i32 0, i32 0), align 8
  store i64 %38, i64* %7, align 8
  br label %42

39:                                               ; preds = %27
  %40 = load i64, i64* %4, align 8
  %41 = load i64*, i64** %5, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* @arfd, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i64 @lseek(i32 %43, i64 %44, i32 %45)
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %53

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @syswarn(i32 1, i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* @lstrval, align 4
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %48, %21, %15, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
