; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_push_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_push_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@STACK_PUSH_CODE = common dso_local global i64 0, align 8
@PRE_MODIFY = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @push_operand(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @GET_MODE_SIZE(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @MEM_P(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @VOIDmode, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @GET_MODE(i64 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %77

23:                                               ; preds = %17, %13
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @XEXP(i64 %24, i32 0)
  store i64 %25, i64* %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @GET_MODE_SIZE(i32 %27)
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @GET_CODE(i64 %31)
  %33 = load i64, i64* @STACK_PUSH_CODE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %77

36:                                               ; preds = %30
  br label %71

37:                                               ; preds = %23
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @GET_CODE(i64 %38)
  %40 = load i64, i64* @PRE_MODIFY, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %69, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @XEXP(i64 %43, i32 1)
  %45 = call i64 @GET_CODE(i64 %44)
  %46 = load i64, i64* @PLUS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %69, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @XEXP(i64 %49, i32 1)
  %51 = call i64 @XEXP(i64 %50, i32 0)
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @XEXP(i64 %52, i32 0)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @XEXP(i64 %56, i32 1)
  %58 = call i64 @XEXP(i64 %57, i32 1)
  %59 = call i64 @GET_CODE(i64 %58)
  %60 = load i64, i64* @CONST_INT, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @XEXP(i64 %63, i32 1)
  %65 = call i64 @XEXP(i64 %64, i32 1)
  %66 = call i32 @INTVAL(i64 %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %55, %48, %42, %37
  store i32 0, i32* %3, align 4
  br label %77

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %36
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @XEXP(i64 %72, i32 0)
  %74 = load i64, i64* @stack_pointer_rtx, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %69, %35, %22, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @INTVAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
