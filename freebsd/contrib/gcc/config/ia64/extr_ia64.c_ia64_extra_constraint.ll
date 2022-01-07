; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_extra_constraint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_extra_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@MEM = common dso_local global i32 0, align 4
@RTX_AUTOINC = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i32 0, align 4
@CONST_VECTOR = common dso_local global i32 0, align 4
@MODE_VECTOR_INT = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@V2SFmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_extra_constraint(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %117 [
    i32 81, label %8
    i32 82, label %21
    i32 83, label %37
    i32 84, label %62
    i32 85, label %66
    i32 87, label %73
    i32 89, label %94
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @VOIDmode, align 4
  %11 = call i32 @memory_operand(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @MEM_VOLATILE_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %118

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @GET_CODE(i32 %22)
  %24 = load i32, i32* @CONST_INT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @INTVAL(i32 %27)
  %29 = icmp sge i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @INTVAL(i32 %31)
  %33 = icmp sle i32 %32, 4
  br label %34

34:                                               ; preds = %30, %26, %21
  %35 = phi i1 [ false, %26 ], [ false, %21 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %118

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @GET_CODE(i32 %38)
  %40 = load i32, i32* @MEM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @XEXP(i32 %43, i32 0)
  %45 = call i32 @GET_CODE(i32 %44)
  %46 = call i32 @GET_RTX_CLASS(i32 %45)
  %47 = load i32, i32* @RTX_AUTOINC, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load i32, i32* @reload_in_progress, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @VOIDmode, align 4
  %55 = call i32 @memory_operand(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %52, %49
  %58 = phi i1 [ true, %49 ], [ %56, %52 ]
  br label %59

59:                                               ; preds = %57, %42, %37
  %60 = phi i1 [ false, %42 ], [ false, %37 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %118

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @VOIDmode, align 4
  %65 = call i32 @small_addr_symbolic_operand(i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %118

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @GET_MODE(i32 %68)
  %70 = call i32 @CONST0_RTX(i32 %69)
  %71 = icmp eq i32 %67, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %118

73:                                               ; preds = %2
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @GET_CODE(i32 %74)
  %76 = load i32, i32* @CONST_VECTOR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @GET_MODE(i32 %79)
  %81 = call i32 @GET_MODE_CLASS(i32 %80)
  %82 = load i32, i32* @MODE_VECTOR_INT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load i32, i32* @DImode, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @GET_MODE(i32 %87)
  %89 = call i32 @simplify_subreg(i32 %85, i32 %86, i32 %88, i32 0)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @INTVAL(i32 %90)
  %92 = call i32 @ia64_const_ok_for_letter_p(i32 %91, i8 signext 74)
  store i32 %92, i32* %3, align 4
  br label %118

93:                                               ; preds = %78, %73
  store i32 0, i32* %3, align 4
  br label %118

94:                                               ; preds = %2
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @GET_CODE(i32 %95)
  %97 = load i32, i32* @CONST_VECTOR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @GET_MODE(i32 %100)
  %102 = load i32, i32* @V2SFmode, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @XVECEXP(i32 %105, i32 0, i32 0)
  %107 = call i32 @ia64_const_double_ok_for_letter_p(i32 %106, i8 signext 71)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @XVECEXP(i32 %110, i32 0, i32 1)
  %112 = call i32 @ia64_const_double_ok_for_letter_p(i32 %111, i8 signext 71)
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %109, %104, %99, %94
  %115 = phi i1 [ false, %104 ], [ false, %99 ], [ false, %94 ], [ %113, %109 ]
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %3, align 4
  br label %118

117:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %114, %93, %84, %66, %62, %59, %34, %18
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @memory_operand(i32, i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @GET_RTX_CLASS(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @small_addr_symbolic_operand(i32, i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @simplify_subreg(i32, i32, i32, i32) #1

declare dso_local i32 @ia64_const_ok_for_letter_p(i32, i8 signext) #1

declare dso_local i32 @ia64_const_double_ok_for_letter_p(i32, i8 signext) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
