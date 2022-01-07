; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_indirect_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_indirect_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_completed = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @indirect_operand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @reload_completed, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %76, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @SUBREG, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %76

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @SUBREG_REG(i32 %16)
  %18 = call i64 @MEM_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @SUBREG_BYTE(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @SUBREG_REG(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @VOIDmode, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @GET_MODE(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %94

34:                                               ; preds = %28, %20
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @XEXP(i32 %38, i32 0)
  %40 = load i32, i32* @Pmode, align 4
  %41 = call i64 @general_operand(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @XEXP(i32 %44, i32 0)
  %46 = call i64 @GET_CODE(i32 %45)
  %47 = load i64, i64* @PLUS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @XEXP(i32 %50, i32 0)
  %52 = call i32 @XEXP(i32 %51, i32 1)
  %53 = call i64 @GET_CODE(i32 %52)
  %54 = load i64, i64* @CONST_INT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @XEXP(i32 %57, i32 0)
  %59 = call i32 @XEXP(i32 %58, i32 1)
  %60 = call i32 @INTVAL(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @XEXP(i32 %65, i32 0)
  %67 = call i32 @XEXP(i32 %66, i32 0)
  %68 = load i32, i32* @Pmode, align 4
  %69 = call i64 @general_operand(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %64, %56, %49, %43
  %72 = phi i1 [ false, %56 ], [ false, %49 ], [ false, %43 ], [ %70, %64 ]
  br label %73

73:                                               ; preds = %71, %37
  %74 = phi i1 [ true, %37 ], [ %72, %71 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %94

76:                                               ; preds = %15, %10, %2
  %77 = load i32, i32* %4, align 4
  %78 = call i64 @MEM_P(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @memory_operand(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @XEXP(i32 %86, i32 0)
  %88 = load i32, i32* @Pmode, align 4
  %89 = call i64 @general_operand(i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %85, %80, %76
  %92 = phi i1 [ false, %80 ], [ false, %76 ], [ %90, %85 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %73, %33
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @general_operand(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @memory_operand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
