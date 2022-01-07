; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_strlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_UNROLL_STRLEN = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@optimize = common dso_local global i32 0, align 4
@TARGET_INLINE_ALL_STRINGOPS = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@constm1_rtx = common dso_local global i64 0, align 8
@QImode = common dso_local global i32 0, align 4
@UNSPEC_SCAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_expand_strlen(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @TARGET_UNROLL_STRLEN, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @const0_rtx, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32, i32* @optimize, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32, i32* @TARGET_INLINE_ALL_STRINGOPS, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @optimize_size, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @GET_CODE(i64 %32)
  %34 = load i64, i64* @CONST_INT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @INTVAL(i64 %37)
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %31
  store i32 0, i32* %5, align 4
  br label %139

41:                                               ; preds = %36, %28, %25, %22, %18, %4
  %42 = load i32, i32* @Pmode, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @XEXP(i64 %43, i32 0)
  %45 = call i64 @force_reg(i32 %42, i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* @Pmode, align 4
  %47 = call i64 @gen_reg_rtx(i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* @TARGET_UNROLL_STRLEN, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %41
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @const0_rtx, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load i32, i32* @optimize, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load i32, i32* @optimize_size, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @emit_move_insn(i64 %61, i64 %62)
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @ix86_expand_strlensi_unroll_1(i64 %64, i64 %65, i64 %66)
  %68 = load i64, i64* @TARGET_64BIT, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @gen_subdi3(i64 %71, i64 %72, i64 %73)
  %75 = call i32 @emit_insn(i32 %74)
  br label %82

76:                                               ; preds = %60
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @gen_subsi3(i64 %77, i64 %78, i64 %79)
  %81 = call i32 @emit_insn(i32 %80)
  br label %82

82:                                               ; preds = %76, %70
  br label %138

83:                                               ; preds = %57, %54, %50, %41
  %84 = load i32, i32* @Pmode, align 4
  %85 = call i64 @gen_reg_rtx(i32 %84)
  store i64 %85, i64* %12, align 8
  %86 = load i32, i32* @Pmode, align 4
  %87 = call i64 @gen_reg_rtx(i32 %86)
  store i64 %87, i64* %13, align 8
  %88 = load i32, i32* @Pmode, align 4
  %89 = load i64, i64* @constm1_rtx, align 8
  %90 = call i64 @force_reg(i32 %88, i64 %89)
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @emit_move_insn(i64 %91, i64 %92)
  %94 = load i32, i32* @QImode, align 4
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @force_reg(i32 %94, i64 %95)
  store i64 %96, i64* %8, align 8
  %97 = call i32 (...) @gen_cld()
  %98 = call i32 @emit_insn(i32 %97)
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i64 @replace_equiv_address_nv(i64 %99, i64 %100)
  store i64 %101, i64* %7, align 8
  %102 = load i32, i32* @Pmode, align 4
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @gen_rtvec(i32 4, i64 %103, i64 %104, i64 %105, i64 %106)
  %108 = load i32, i32* @UNSPEC_SCAS, align 4
  %109 = call i64 @gen_rtx_UNSPEC(i32 %102, i32 %107, i32 %108)
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @gen_strlenqi_1(i64 %110, i64 %111, i64 %112)
  %114 = call i32 @emit_insn(i32 %113)
  %115 = load i64, i64* @TARGET_64BIT, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %83
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @gen_one_cmpldi2(i64 %118, i64 %119)
  %121 = call i32 @emit_insn(i32 %120)
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @constm1_rtx, align 8
  %125 = call i32 @gen_adddi3(i64 %122, i64 %123, i64 %124)
  %126 = call i32 @emit_insn(i32 %125)
  br label %137

127:                                              ; preds = %83
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @gen_one_cmplsi2(i64 %128, i64 %129)
  %131 = call i32 @emit_insn(i32 %130)
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* @constm1_rtx, align 8
  %135 = call i32 @gen_addsi3(i64 %132, i64 %133, i64 %134)
  %136 = call i32 @emit_insn(i32 %135)
  br label %137

137:                                              ; preds = %127, %117
  br label %138

138:                                              ; preds = %137, %82
  store i32 1, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %40
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @ix86_expand_strlensi_unroll_1(i64, i64, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_subdi3(i64, i64, i64) #1

declare dso_local i32 @gen_subsi3(i64, i64, i64) #1

declare dso_local i32 @gen_cld(...) #1

declare dso_local i64 @replace_equiv_address_nv(i64, i64) #1

declare dso_local i64 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64, i64, i64, i64) #1

declare dso_local i32 @gen_strlenqi_1(i64, i64, i64) #1

declare dso_local i32 @gen_one_cmpldi2(i64, i64) #1

declare dso_local i32 @gen_adddi3(i64, i64, i64) #1

declare dso_local i32 @gen_one_cmplsi2(i64, i64) #1

declare dso_local i32 @gen_addsi3(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
