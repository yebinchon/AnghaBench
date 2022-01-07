; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_register_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_register_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@NO_REGS = common dso_local global i64 0, align 8
@MODE_COMPLEX_FLOAT = common dso_local global i64 0, align 8
@MODE_COMPLEX_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_operand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @GET_MODE(i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VOIDmode, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %70

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @SUBREG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @SUBREG_REG(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @reload_completed, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @MEM_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @general_operand(i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %70

34:                                               ; preds = %26, %21
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @GET_MODE(i32 %35)
  %37 = call i64 @SCALAR_FLOAT_MODE_P(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @GET_MODE(i32 %40)
  %42 = call i64 @GET_MODE_SIZE(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @GET_MODE(i32 %43)
  %45 = call i64 @GET_MODE_SIZE(i32 %44)
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %70

48:                                               ; preds = %39, %34
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %16
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @REG_P(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @REGNO(i32 %55)
  %57 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @REGNO(i32 %60)
  %62 = call i64 @REGNO_REG_CLASS(i64 %61)
  %63 = load i64, i64* @NO_REGS, align 8
  %64 = icmp ne i64 %62, %63
  br label %65

65:                                               ; preds = %59, %54
  %66 = phi i1 [ true, %54 ], [ %64, %59 ]
  br label %67

67:                                               ; preds = %65, %50
  %68 = phi i1 [ false, %50 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %47, %30, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @general_operand(i32, i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @REGNO_REG_CLASS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
