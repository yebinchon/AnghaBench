; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_split_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_split_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regs_invalidated_by_call = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i64 0, align 8
@TARGET_CONST_GP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_split_call(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @REG_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %7
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @REGNO(i64 %23)
  %25 = call i64 @GR_REGNO_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @regs_invalidated_by_call, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @REGNO(i64 %35)
  %37 = call i64 @TEST_HARD_REG_BIT(i32 %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33, %30, %27
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @REGNO(i64 %40)
  %42 = call i32 @FUNCTION_ARG_REGNO_P(i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i1 [ false, %33 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* @Pmode, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @gen_rtx_POST_INC(i32 %48, i64 %49)
  store i64 %50, i64* %17, align 8
  %51 = load i32, i32* @Pmode, align 4
  %52 = load i64, i64* %17, align 8
  %53 = call i64 @gen_rtx_MEM(i32 %51, i64 %52)
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %17, align 8
  %56 = call i32 @emit_move_insn(i64 %54, i64 %55)
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @emit_move_insn(i64 %57, i64 %58)
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %45
  %63 = load i32, i32* @Pmode, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @gen_rtx_POST_DEC(i32 %63, i64 %64)
  store i64 %65, i64* %17, align 8
  br label %68

66:                                               ; preds = %45
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %17, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i32, i32* @Pmode, align 4
  %70 = load i64, i64* %17, align 8
  %71 = call i64 @gen_rtx_MEM(i32 %69, i64 %70)
  store i64 %71, i64* %17, align 8
  %72 = load i64, i64* @pic_offset_table_rtx, align 8
  %73 = load i64, i64* %17, align 8
  %74 = call i32 @emit_move_insn(i64 %72, i64 %73)
  store i32 1, i32* %16, align 4
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %68, %22, %7
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @gen_sibcall_nogp(i64 %80)
  store i64 %81, i64* %15, align 8
  br label %95

82:                                               ; preds = %76
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @gen_call_value_nogp(i64 %86, i64 %87, i64 %88)
  store i64 %89, i64* %15, align 8
  br label %94

90:                                               ; preds = %82
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @gen_call_nogp(i64 %91, i64 %92)
  store i64 %93, i64* %15, align 8
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %79
  %96 = load i64, i64* %15, align 8
  %97 = call i32 @emit_call_insn(i64 %96)
  %98 = load i32, i32* @TARGET_CONST_GP, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = call i32 (...) @ia64_reload_gp()
  br label %111

111:                                              ; preds = %109, %106, %103, %100
  ret void
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @GR_REGNO_P(i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @FUNCTION_ARG_REGNO_P(i32) #1

declare dso_local i64 @gen_rtx_POST_INC(i32, i64) #1

declare dso_local i64 @gen_rtx_MEM(i32, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @gen_rtx_POST_DEC(i32, i64) #1

declare dso_local i64 @gen_sibcall_nogp(i64) #1

declare dso_local i64 @gen_call_value_nogp(i64, i64, i64) #1

declare dso_local i64 @gen_call_nogp(i64, i64) #1

declare dso_local i32 @emit_call_insn(i64) #1

declare dso_local i32 @ia64_reload_gp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
