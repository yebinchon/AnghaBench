; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_legitimate_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_legitimate_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@TARGET_VIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legitimate_constant_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @GET_CODE(i32 %5)
  switch i32 %6, label %60 [
    i32 128, label %7
    i32 131, label %13
    i32 130, label %27
    i32 129, label %49
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %62

12:                                               ; preds = %7
  br label %61

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @XEXP(i32 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @GET_CODE(i32 %16)
  %18 = load i32, i32* @PLUS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  %23 = call i32 @SPARC_SYMBOL_REF_TLS_P(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %62

26:                                               ; preds = %20, %13
  br label %61

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @GET_MODE(i32 %28)
  %30 = load i32, i32* @VOIDmode, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %62

33:                                               ; preds = %27
  %34 = load i32, i32* @TARGET_VIS, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @GET_MODE(i32 %37)
  %39 = call i32 @SCALAR_FLOAT_MODE_P(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @GET_MODE(i32 %43)
  %45 = call i32 @const_zero_operand(i32 %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %62

48:                                               ; preds = %41, %36, %33
  store i32 0, i32* %2, align 4
  br label %62

49:                                               ; preds = %1
  %50 = load i32, i32* @TARGET_VIS, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @GET_MODE(i32 %54)
  %56 = call i32 @const_zero_operand(i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %62

59:                                               ; preds = %52, %49
  store i32 0, i32* %2, align 4
  br label %62

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %60, %26, %12
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %58, %48, %47, %32, %25, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @SYMBOL_REF_TLS_MODEL(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SPARC_SYMBOL_REF_TLS_P(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @const_zero_operand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
