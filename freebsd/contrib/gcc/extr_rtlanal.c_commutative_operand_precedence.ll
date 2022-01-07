; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_commutative_operand_precedence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_commutative_operand_precedence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@NEG = common dso_local global i32 0, align 4
@NOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commutative_operand_precedence(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @GET_CODE(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @CONST_INT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -7, i32* %2, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CONST_DOUBLE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 -6, i32* %2, align 4
  br label %64

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @avoid_constant_pool_reference(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @GET_CODE(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @GET_RTX_CLASS(i32 %21)
  switch i32 %22, label %63 [
    i32 131, label %23
    i32 130, label %34
    i32 129, label %50
    i32 132, label %51
    i32 133, label %52
    i32 128, label %53
  ]

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @CONST_INT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -5, i32* %2, align 4
  br label %64

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CONST_DOUBLE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -4, i32* %2, align 4
  br label %64

33:                                               ; preds = %28
  store i32 -3, i32* %2, align 4
  br label %64

34:                                               ; preds = %16
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SUBREG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @SUBREG_REG(i32 %39)
  %41 = call i32 @OBJECT_P(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 -2, i32* %2, align 4
  br label %64

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @CONSTANT_P(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %64

49:                                               ; preds = %44
  store i32 -3, i32* %2, align 4
  br label %64

50:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %64

51:                                               ; preds = %16
  store i32 4, i32* %2, align 4
  br label %64

52:                                               ; preds = %16
  store i32 2, i32* %2, align 4
  br label %64

53:                                               ; preds = %16
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @NEG, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @NOT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  store i32 1, i32* %2, align 4
  br label %64

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %16, %62
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %61, %52, %51, %50, %49, %48, %43, %33, %32, %27, %15, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @avoid_constant_pool_reference(i32) #1

declare dso_local i32 @GET_RTX_CLASS(i32) #1

declare dso_local i32 @OBJECT_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
