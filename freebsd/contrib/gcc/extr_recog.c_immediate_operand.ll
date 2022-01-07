; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_immediate_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_immediate_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@MODE_PARTIAL_INT = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @immediate_operand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @GET_MODE(i32 %6)
  %8 = load i64, i64* @VOIDmode, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* @VOIDmode, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @GET_MODE_CLASS(i32 %16)
  %18 = load i64, i64* @MODE_INT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @GET_MODE_CLASS(i32 %21)
  %23 = load i64, i64* @MODE_PARTIAL_INT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %79

26:                                               ; preds = %20, %15, %10, %2
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @CONST_INT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* @VOIDmode, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @INTVAL(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @trunc_int_for_mode(i64 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @INTVAL(i32 %41)
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %79

45:                                               ; preds = %36, %31, %26
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @CONSTANT_P(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @GET_MODE(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* @VOIDmode, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @GET_MODE(i32 %61)
  %63 = load i64, i64* @VOIDmode, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %60, %55, %49
  %66 = load i32, i32* @flag_pic, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @LEGITIMATE_PIC_OPERAND_P(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @LEGITIMATE_CONSTANT_P(i32 %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %72, %68, %60, %45
  %77 = phi i1 [ false, %68 ], [ false, %60 ], [ false, %45 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %44, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @trunc_int_for_mode(i64, i32) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i64 @LEGITIMATE_PIC_OPERAND_P(i32) #1

declare dso_local i64 @LEGITIMATE_CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
