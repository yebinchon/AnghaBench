; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_sCOND.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_sCOND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_E500 = common dso_local global i64 0, align 8
@rs6000_compare_fp_p = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@ORDERED = common dso_local global i32 0, align 4
@UNGE = common dso_local global i32 0, align 4
@UNLE = common dso_local global i32 0, align 4
@CCEQmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@rs6000_compare_op0 = common dso_local global i32 0, align 4
@rs6000_compare_op1 = common dso_local global i32 0, align 4
@TARGET_POWERPC64 = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_emit_sCOND(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rs6000_generate_compare(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @GET_CODE(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i64, i64* @TARGET_E500, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %2
  %20 = load i64, i64* @rs6000_compare_fp_p, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load i32, i32* @TARGET_FPRS, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SImode, align 4
  %31 = call i32 @PUT_MODE(i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @XEXP(i32 %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @EQ, align 4
  %40 = icmp eq i32 %38, %39
  br label %41

41:                                               ; preds = %37, %28
  %42 = phi i1 [ true, %28 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @gcc_assert(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @NE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @gen_e500_flip_gt_bit(i32 %49, i32 %50)
  %52 = call i32 @emit_insn(i32 %51)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @gen_move_from_CR_gt_bit(i32 %54, i32 %55)
  %57 = call i32 @emit_insn(i32 %56)
  br label %152

58:                                               ; preds = %25, %22, %19, %2
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %90, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %90, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @LE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %90, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @GEU, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @LEU, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ORDERED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @UNGE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @UNLE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %86, %82, %78, %74, %70, %66, %62, %58
  %91 = load i32, i32* @CCEQmode, align 4
  %92 = call i32 @gen_reg_rtx(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @XEXP(i32 %93, i32 0)
  %95 = call i32 @GET_MODE(i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @rs6000_reverse_condition(i32 %96, i32 %97)
  %99 = load i32, i32* @SImode, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @XEXP(i32 %100, i32 0)
  %102 = load i32, i32* @const0_rtx, align 4
  %103 = call i32 @gen_rtx_fmt_ee(i32 %98, i32 %99, i32 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* @CCEQmode, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @const0_rtx, align 4
  %107 = call i32 @gen_rtx_COMPARE(i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* @VOIDmode, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @gen_rtx_SET(i32 %108, i32 %109, i32 %110)
  %112 = call i32 @emit_insn(i32 %111)
  %113 = load i32, i32* @VOIDmode, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @const0_rtx, align 4
  %116 = call i32 @gen_rtx_EQ(i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %90, %86
  %118 = load i32, i32* @rs6000_compare_op0, align 4
  %119 = call i32 @GET_MODE(i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @VOIDmode, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* @rs6000_compare_op1, align 4
  %125 = call i32 @GET_MODE(i32 %124)
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %123, %117
  %127 = load i64, i64* @TARGET_POWERPC64, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %126
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @DImode, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* @rs6000_compare_fp_p, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133, %129
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @DImode, align 4
  %139 = call i32 @PUT_MODE(i32 %137, i32 %138)
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @convert_move(i32 %140, i32 %141, i32 0)
  br label %152

143:                                              ; preds = %133, %126
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @SImode, align 4
  %146 = call i32 @PUT_MODE(i32 %144, i32 %145)
  %147 = load i32, i32* @VOIDmode, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @gen_rtx_SET(i32 %147, i32 %148, i32 %149)
  %151 = call i32 @emit_insn(i32 %150)
  br label %152

152:                                              ; preds = %53, %143, %136
  ret void
}

declare dso_local i32 @rs6000_generate_compare(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @PUT_MODE(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_e500_flip_gt_bit(i32, i32) #1

declare dso_local i32 @gen_move_from_CR_gt_bit(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

declare dso_local i32 @rs6000_reverse_condition(i32, i32) #1

declare dso_local i32 @gen_rtx_COMPARE(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_EQ(i32, i32, i32) #1

declare dso_local i32 @convert_move(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
