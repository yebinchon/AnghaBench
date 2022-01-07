; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_spe_func_has_64bit_regs_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_spe_func_has_64bit_regs_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_calls_eh_return = common dso_local global i64 0, align 8
@current_function_calls_setjmp = common dso_local global i64 0, align 8
@current_function_has_nonlocal_goto = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @spe_func_has_64bit_regs_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spe_func_has_64bit_regs_p() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i64, i64* @current_function_calls_eh_return, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @current_function_calls_setjmp, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* @current_function_has_nonlocal_goto, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8, %0
  store i32 1, i32* %1, align 4
  br label %57

15:                                               ; preds = %11
  %16 = call i64 (...) @get_insns()
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @NEXT_INSN(i64 %17)
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %53, %15
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @NULL_RTX, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @INSN_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @PATTERN(i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @SET, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @SET_SRC(i64 %35)
  %37 = call i32 @GET_MODE(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @SPE_VECTOR_MODE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %1, align 4
  br label %57

42:                                               ; preds = %34
  %43 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @DFmode, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %1, align 4
  br label %57

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %51, %23
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %3, align 8
  %55 = call i64 @NEXT_INSN(i64 %54)
  store i64 %55, i64* %3, align 8
  br label %19

56:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %49, %41, %14
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SET_SRC(i64) #1

declare dso_local i64 @SPE_VECTOR_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
