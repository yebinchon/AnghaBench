; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_if_test_bypass_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_if_test_bypass_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IF_THEN_ELSE = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_test_bypass_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @single_set(i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @JUMP_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @CALL_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @gcc_assert(i32 %25)
  store i32 0, i32* %3, align 4
  br label %107

27:                                               ; preds = %2
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @SET_SRC(i64 %28)
  %30 = call i64 @GET_CODE(i64 %29)
  %31 = load i64, i64* @IF_THEN_ELSE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %107

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @SET_SRC(i64 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @single_set(i64 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @SET_DEST(i64 %42)
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @XEXP(i64 %44, i32 1)
  %46 = call i64 @reg_mentioned_p(i32 %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @SET_DEST(i64 %49)
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @XEXP(i64 %51, i32 2)
  %53 = call i64 @reg_mentioned_p(i32 %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %41
  store i32 0, i32* %3, align 4
  br label %107

56:                                               ; preds = %48
  br label %106

57:                                               ; preds = %34
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @PATTERN(i64 %58)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @GET_CODE(i64 %60)
  %62 = load i64, i64* @PARALLEL, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @gcc_assert(i32 %64)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %102, %57
  %67 = load i32, i32* %9, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @XVECLEN(i64 %68, i32 0)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %105

71:                                               ; preds = %66
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @XVECEXP(i64 %72, i32 0, i32 %73)
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @GET_CODE(i64 %75)
  %77 = load i64, i64* @CLOBBER, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %102

80:                                               ; preds = %71
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @GET_CODE(i64 %81)
  %83 = load i64, i64* @SET, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @gcc_assert(i32 %85)
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @SET_DEST(i64 %87)
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @XEXP(i64 %89, i32 1)
  %91 = call i64 @reg_mentioned_p(i32 %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %80
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @SET_DEST(i64 %94)
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @XEXP(i64 %96, i32 2)
  %98 = call i64 @reg_mentioned_p(i32 %95, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %80
  store i32 0, i32* %3, align 4
  br label %107

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %79
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %66

105:                                              ; preds = %66
  br label %106

106:                                              ; preds = %105, %56
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %100, %55, %33, %23
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @single_set(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @reg_mentioned_p(i32, i32) #1

declare dso_local i32 @SET_DEST(i64) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
