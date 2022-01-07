; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ia64_compare_op0 = common dso_local global i64 0, align 8
@ia64_compare_op1 = common dso_local global i64 0, align 8
@BImode = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@TFmode = common dso_local global i64 0, align 8
@cmptf_libfunc = common dso_local global i64 0, align 8
@LCT_CONST = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ia64_expand_compare(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i64, i64* @ia64_compare_op0, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @ia64_compare_op1, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @GET_MODE(i64 %14)
  %16 = load i64, i64* @BImode, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 130
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 135
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %18
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @const0_rtx, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %7, align 8
  br label %112

33:                                               ; preds = %2
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @GET_MODE(i64 %34)
  %36 = load i64, i64* @TFmode, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %33
  %39 = load i64, i64* @cmptf_libfunc, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @GET_MODE(i64 %42)
  %44 = load i64, i64* @TFmode, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = load i32, i32* %3, align 4
  switch i32 %50, label %59 [
    i32 135, label %51
    i32 130, label %52
    i32 128, label %53
    i32 129, label %54
    i32 131, label %55
    i32 132, label %56
    i32 133, label %57
    i32 134, label %58
  ]

51:                                               ; preds = %46
  store i32 4, i32* %8, align 4
  store i32 130, i32* %9, align 4
  br label %61

52:                                               ; preds = %46
  store i32 4, i32* %8, align 4
  store i32 135, i32* %9, align 4
  br label %61

53:                                               ; preds = %46
  store i32 2, i32* %8, align 4
  store i32 130, i32* %9, align 4
  br label %61

54:                                               ; preds = %46
  store i32 2, i32* %8, align 4
  store i32 135, i32* %9, align 4
  br label %61

55:                                               ; preds = %46
  store i32 9, i32* %8, align 4
  store i32 130, i32* %9, align 4
  br label %61

56:                                               ; preds = %46
  store i32 13, i32* %8, align 4
  store i32 130, i32* %9, align 4
  br label %61

57:                                               ; preds = %46
  store i32 17, i32* %8, align 4
  store i32 130, i32* %9, align 4
  br label %61

58:                                               ; preds = %46
  store i32 21, i32* %8, align 4
  store i32 130, i32* %9, align 4
  br label %61

59:                                               ; preds = %46
  %60 = call i32 (...) @gcc_unreachable()
  br label %61

61:                                               ; preds = %59, %58, %57, %56, %55, %54, %53, %52, %51
  %62 = call i32 (...) @start_sequence()
  %63 = load i64, i64* @cmptf_libfunc, align 8
  %64 = load i32, i32* @LCT_CONST, align 4
  %65 = load i32, i32* @DImode, align 4
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @TFmode, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @TFmode, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @GEN_INT(i32 %70)
  %72 = load i32, i32* @DImode, align 4
  %73 = call i64 @emit_library_call_value(i64 %63, i32 0, i32 %64, i32 %65, i32 3, i64 %66, i64 %67, i64 %68, i64 %69, i32 %71, i32 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* @BImode, align 8
  %75 = call i64 @gen_reg_rtx(i64 %74)
  store i64 %75, i64* %7, align 8
  %76 = load i32, i32* @VOIDmode, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i64, i64* @BImode, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @const0_rtx, align 8
  %83 = call i64 @gen_rtx_fmt_ee(i32 %78, i32 %80, i64 %81, i64 %82)
  %84 = call i32 @gen_rtx_SET(i32 %76, i64 %77, i64 %83)
  %85 = call i32 @emit_insn(i32 %84)
  %86 = call i64 (...) @get_insns()
  store i64 %86, i64* %11, align 8
  %87 = call i32 (...) @end_sequence()
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* %3, align 4
  %92 = load i64, i64* @BImode, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @gen_rtx_fmt_ee(i32 %91, i32 %93, i64 %94, i64 %95)
  %97 = call i32 @emit_libcall_block(i64 %88, i64 %89, i64 %90, i64 %96)
  store i32 130, i32* %3, align 4
  br label %111

98:                                               ; preds = %33
  %99 = load i64, i64* @BImode, align 8
  %100 = call i64 @gen_reg_rtx(i64 %99)
  store i64 %100, i64* %7, align 8
  %101 = load i32, i32* @VOIDmode, align 4
  %102 = load i64, i64* %7, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load i64, i64* @BImode, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @gen_rtx_fmt_ee(i32 %103, i32 %105, i64 %106, i64 %107)
  %109 = call i32 @gen_rtx_SET(i32 %101, i64 %102, i64 %108)
  %110 = call i32 @emit_insn(i32 %109)
  store i32 130, i32* %3, align 4
  br label %111

111:                                              ; preds = %98, %61
  br label %112

112:                                              ; preds = %111, %28
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @const0_rtx, align 8
  %117 = call i64 @gen_rtx_fmt_ee(i32 %113, i32 %114, i64 %115, i64 %116)
  ret i64 %117
}

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @emit_library_call_value(i64, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @gen_reg_rtx(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_libcall_block(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
