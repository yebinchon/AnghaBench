; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_record_opr_changes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_record_opr_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@record_last_set_info = common dso_local global i32 0, align 4
@REG_INC = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@regs_invalidated_by_call = common dso_local global i32 0, align 4
@CLOBBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @record_opr_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_opr_changes(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @PATTERN(i64 %8)
  %10 = load i32, i32* @record_last_set_info, align 4
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @note_stores(i32 %9, i32 %10, i64 %11)
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @REG_NOTES(i64 %13)
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @REG_NOTE_KIND(i64 %19)
  %21 = load i64, i64* @REG_INC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @XEXP(i64 %25, i32 0)
  %27 = call i32 @REGNO(i64 %26)
  %28 = call i32 @record_last_reg_set_info(i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %18
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @XEXP(i64 %31, i32 1)
  store i64 %32, i64* %3, align 8
  br label %15

33:                                               ; preds = %15
  %34 = load i64, i64* %2, align 8
  %35 = call i64 @CALL_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %105

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* @regs_invalidated_by_call, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @TEST_HARD_REG_BIT(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i64, i64* %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @record_last_reg_set_info(i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load i64, i64* %2, align 8
  %57 = call i64 @CALL_INSN_FUNCTION_USAGE(i64 %56)
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %94, %55
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @XEXP(i64 %62, i32 0)
  %64 = call i64 @GET_CODE(i64 %63)
  %65 = load i64, i64* @CLOBBER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %61
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @XEXP(i64 %68, i32 0)
  %70 = call i64 @XEXP(i64 %69, i32 0)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @REG_P(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @HARD_REGISTER_P(i64 %75)
  %77 = call i32 @gcc_assert(i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @REGNO(i64 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @END_HARD_REGNO(i64 %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %86, %74
  %83 = load i64, i64* %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @record_last_reg_set_info(i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %82, label %91

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92, %61
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @XEXP(i64 %95, i32 1)
  store i64 %96, i64* %6, align 8
  br label %58

97:                                               ; preds = %58
  %98 = load i64, i64* %2, align 8
  %99 = call i32 @CONST_OR_PURE_CALL_P(i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %2, align 8
  %103 = call i32 @record_last_mem_set_info(i64 %102)
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %104, %33
  ret void
}

declare dso_local i32 @note_stores(i32, i32, i64) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i32 @record_last_reg_set_info(i64, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @CALL_INSN_FUNCTION_USAGE(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @HARD_REGISTER_P(i64) #1

declare dso_local i32 @END_HARD_REGNO(i64) #1

declare dso_local i32 @CONST_OR_PURE_CALL_P(i64) #1

declare dso_local i32 @record_last_mem_set_info(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
