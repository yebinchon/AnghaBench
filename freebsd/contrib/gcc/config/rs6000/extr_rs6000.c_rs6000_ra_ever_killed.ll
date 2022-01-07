; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_ra_ever_killed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_ra_ever_killed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_is_thunk = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@LINK_REGISTER_REGNUM = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@REG_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rs6000_ra_ever_killed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_ra_ever_killed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @current_function_is_thunk, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %61

8:                                                ; preds = %0
  %9 = call i32 (...) @push_topmost_sequence()
  %10 = call i64 (...) @get_insns()
  store i64 %10, i64* %2, align 8
  %11 = call i32 (...) @pop_topmost_sequence()
  %12 = load i32, i32* @Pmode, align 4
  %13 = load i32, i32* @LINK_REGISTER_REGNUM, align 4
  %14 = call i64 @gen_rtx_REG(i32 %12, i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @NEXT_INSN(i64 %15)
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %57, %8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @NULL_RTX, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @INSN_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @CALL_P(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @SIBLING_CALL_P(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %61

34:                                               ; preds = %29
  br label %55

35:                                               ; preds = %25
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* @REG_INC, align 4
  %38 = load i32, i32* @LINK_REGISTER_REGNUM, align 4
  %39 = call i64 @find_regno_note(i64 %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %1, align 4
  br label %61

42:                                               ; preds = %35
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @set_of(i64 %43, i64 %44)
  %46 = load i64, i64* @NULL_RTX, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @prologue_epilogue_contains(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 1, i32* %1, align 4
  br label %61

53:                                               ; preds = %48, %42
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %34
  br label %56

56:                                               ; preds = %55, %21
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @NEXT_INSN(i64 %58)
  store i64 %59, i64* %4, align 8
  br label %17

60:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %61

61:                                               ; preds = %60, %52, %41, %33, %7
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @push_topmost_sequence(...) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @pop_topmost_sequence(...) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i32 @SIBLING_CALL_P(i64) #1

declare dso_local i64 @find_regno_note(i64, i32, i32) #1

declare dso_local i64 @set_of(i64, i64) #1

declare dso_local i32 @prologue_epilogue_contains(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
