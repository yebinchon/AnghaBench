; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_tm_ccmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_tm_ccmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@CCTmode = common dso_local global i32 0, align 4
@CCT3mode = common dso_local global i32 0, align 4
@CCT1mode = common dso_local global i32 0, align 4
@CCT2mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_tm_ccmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @CONST_INT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @CONST_INT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @VOIDmode, align 4
  store i32 %20, i32* %4, align 4
  br label %66

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @INTVAL(i32 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @CCTmode, align 4
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @INTVAL(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @INTVAL(i32 %30)
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @CCT3mode, align 4
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @INTVAL(i32 %39)
  %41 = call i32 @exact_log2(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @INTVAL(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @INTVAL(i32 %44)
  %46 = xor i32 %43, %45
  %47 = call i32 @exact_log2(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %63

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @CCT1mode, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @CCT2mode, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %50, %38
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* @VOIDmode, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %61, %33, %25, %19
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @exact_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
