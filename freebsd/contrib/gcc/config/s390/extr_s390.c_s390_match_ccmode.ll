; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_match_ccmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_match_ccmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_match_ccmode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @VOIDmode, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @PATTERN(i32 %13)
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @SET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @PATTERN(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @s390_match_ccmode_set(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @PATTERN(i32 %24)
  %26 = call i64 @GET_CODE(i32 %25)
  %27 = load i64, i64* @PARALLEL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @PATTERN(i32 %32)
  %34 = call i32 @XVECLEN(i32 %33, i32 0)
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @PATTERN(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @XVECEXP(i32 %38, i32 0, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @SET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @s390_match_ccmode_set(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %58

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %30

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56, %23
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %50, %18, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @s390_match_ccmode_set(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
