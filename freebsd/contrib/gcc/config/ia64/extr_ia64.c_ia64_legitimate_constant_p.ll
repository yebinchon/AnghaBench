; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_legitimate_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_legitimate_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@V2SFmode = common dso_local global i32 0, align 4
@MODE_VECTOR_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_legitimate_constant_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @GET_CODE(i32 %7)
  switch i32 %8, label %95 [
    i32 131, label %9
    i32 129, label %9
    i32 132, label %10
    i32 133, label %19
    i32 128, label %19
    i32 130, label %74
  ]

9:                                                ; preds = %1, %1
  store i32 1, i32* %2, align 4
  br label %96

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @GET_MODE(i32 %11)
  %13 = load i32, i32* @VOIDmode, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %96

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @CONST_DOUBLE_OK_FOR_G(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %96

19:                                               ; preds = %1, %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @tls_symbolic_operand_type(i32 %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GET_CODE(i32 %25)
  %27 = icmp eq i32 %26, 133
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @XEXP(i32 %29, i32 0)
  %31 = call i32 @GET_CODE(i32 %30)
  %32 = load i32, i32* @PLUS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @XEXP(i32 %35, i32 0)
  %37 = call i32 @XEXP(i32 %36, i32 1)
  %38 = call i32 @GET_CODE(i32 %37)
  %39 = icmp eq i32 %38, 131
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @XEXP(i32 %41, i32 0)
  %43 = call i32 @XEXP(i32 %42, i32 1)
  %44 = call i32 @INTVAL(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @XEXP(i32 %45, i32 0)
  %47 = call i32 @XEXP(i32 %46, i32 0)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %40, %34, %28, %23
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @GET_MODE(i32 %50)
  %52 = call i32 @any_offset_symbol_operand(i32 %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @GET_MODE(i32 %56)
  %58 = call i32 @function_operand(i32 %55, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %48
  store i32 1, i32* %2, align 4
  br label %96

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @GET_MODE(i32 %63)
  %65 = call i32 @aligned_offset_symbol_operand(i32 %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 16383
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %2, align 4
  br label %96

72:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %96

73:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %96

74:                                               ; preds = %1
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @GET_MODE(i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @V2SFmode, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @ia64_extra_constraint(i32 %81, i8 signext 89)
  store i32 %82, i32* %2, align 4
  br label %96

83:                                               ; preds = %74
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @GET_MODE_CLASS(i32 %84)
  %86 = load i32, i32* @MODE_VECTOR_INT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @GET_MODE_SIZE(i32 %89)
  %91 = icmp sle i32 %90, 8
  br label %92

92:                                               ; preds = %88, %83
  %93 = phi i1 [ false, %83 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %2, align 4
  br label %96

95:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %92, %80, %73, %72, %67, %60, %16, %15, %9
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @CONST_DOUBLE_OK_FOR_G(i32) #1

declare dso_local i32 @tls_symbolic_operand_type(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @any_offset_symbol_operand(i32, i32) #1

declare dso_local i32 @function_operand(i32, i32) #1

declare dso_local i32 @aligned_offset_symbol_operand(i32, i32) #1

declare dso_local i32 @ia64_extra_constraint(i32, i8 signext) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
