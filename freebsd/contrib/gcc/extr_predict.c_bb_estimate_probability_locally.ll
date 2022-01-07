; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_bb_estimate_probability_locally.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_bb_estimate_probability_locally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRED_POINTER = common dso_local global i32 0, align 4
@NOT_TAKEN = common dso_local global i32 0, align 4
@TAKEN = common dso_local global i32 0, align 4
@PRED_UNCONDITIONAL = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@PRED_OPCODE_NONEQUAL = common dso_local global i32 0, align 4
@PRED_FPOPCODE = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i32 0, align 4
@PRED_OPCODE_POSITIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bb_estimate_probability_locally to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bb_estimate_probability_locally(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @BB_END(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @can_predict_insn_p(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %181

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @get_condition(i32 %12, i32* null, i32 0, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %181

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @COMPARISON_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @XEXP(i32 %22, i32 0)
  %24 = call i64 @REG_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @XEXP(i32 %27, i32 0)
  %29 = call i64 @REG_POINTER(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @XEXP(i32 %32, i32 1)
  %34 = call i64 @REG_P(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @XEXP(i32 %37, i32 1)
  %39 = call i64 @REG_POINTER(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36, %26
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @GET_CODE(i32 %42)
  %44 = icmp eq i32 %43, 137
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @PRED_POINTER, align 4
  %48 = load i32, i32* @NOT_TAKEN, align 4
  %49 = call i32 @predict_insn_def(i32 %46, i32 %47, i32 %48)
  br label %60

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @GET_CODE(i32 %51)
  %53 = icmp eq i32 %52, 131
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @PRED_POINTER, align 4
  %57 = load i32, i32* @TAKEN, align 4
  %58 = call i32 @predict_insn_def(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %45
  br label %181

61:                                               ; preds = %36, %31, %17
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @GET_CODE(i32 %62)
  switch i32 %63, label %179 [
    i32 138, label %64
    i32 137, label %77
    i32 129, label %77
    i32 131, label %102
    i32 132, label %102
    i32 130, label %127
    i32 128, label %132
    i32 134, label %137
    i32 133, label %137
    i32 136, label %158
    i32 135, label %158
  ]

64:                                               ; preds = %61
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @PRED_UNCONDITIONAL, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @const0_rtx, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @NOT_TAKEN, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @TAKEN, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = call i32 @predict_insn_def(i32 %65, i32 %66, i32 %75)
  br label %180

77:                                               ; preds = %61, %61
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @XEXP(i32 %78, i32 0)
  %80 = call i32 @GET_MODE(i32 %79)
  %81 = call i32 @FLOAT_MODE_P(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %101

84:                                               ; preds = %77
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @XEXP(i32 %85, i32 1)
  %87 = load i32, i32* @const0_rtx, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @XEXP(i32 %90, i32 0)
  %92 = load i32, i32* @const0_rtx, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %84
  br label %100

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @PRED_OPCODE_NONEQUAL, align 4
  %98 = load i32, i32* @NOT_TAKEN, align 4
  %99 = call i32 @predict_insn_def(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %94
  br label %101

101:                                              ; preds = %100, %83
  br label %180

102:                                              ; preds = %61, %61
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @XEXP(i32 %103, i32 0)
  %105 = call i32 @GET_MODE(i32 %104)
  %106 = call i32 @FLOAT_MODE_P(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %126

109:                                              ; preds = %102
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @XEXP(i32 %110, i32 1)
  %112 = load i32, i32* @const0_rtx, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @XEXP(i32 %115, i32 0)
  %117 = load i32, i32* @const0_rtx, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %109
  br label %125

120:                                              ; preds = %114
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @PRED_OPCODE_NONEQUAL, align 4
  %123 = load i32, i32* @TAKEN, align 4
  %124 = call i32 @predict_insn_def(i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %119
  br label %126

126:                                              ; preds = %125, %108
  br label %180

127:                                              ; preds = %61
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @PRED_FPOPCODE, align 4
  %130 = load i32, i32* @TAKEN, align 4
  %131 = call i32 @predict_insn_def(i32 %128, i32 %129, i32 %130)
  br label %180

132:                                              ; preds = %61
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @PRED_FPOPCODE, align 4
  %135 = load i32, i32* @NOT_TAKEN, align 4
  %136 = call i32 @predict_insn_def(i32 %133, i32 %134, i32 %135)
  br label %180

137:                                              ; preds = %61, %61
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @XEXP(i32 %138, i32 1)
  %140 = load i32, i32* @const0_rtx, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %152, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @XEXP(i32 %143, i32 1)
  %145 = load i32, i32* @const1_rtx, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @XEXP(i32 %148, i32 1)
  %150 = load i32, i32* @constm1_rtx, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %147, %142, %137
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @PRED_OPCODE_POSITIVE, align 4
  %155 = load i32, i32* @NOT_TAKEN, align 4
  %156 = call i32 @predict_insn_def(i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %147
  br label %180

158:                                              ; preds = %61, %61
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @XEXP(i32 %159, i32 1)
  %161 = load i32, i32* @const0_rtx, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @XEXP(i32 %164, i32 1)
  %166 = load i32, i32* @const1_rtx, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @XEXP(i32 %169, i32 1)
  %171 = load i32, i32* @constm1_rtx, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %168, %163, %158
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @PRED_OPCODE_POSITIVE, align 4
  %176 = load i32, i32* @TAKEN, align 4
  %177 = call i32 @predict_insn_def(i32 %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %168
  br label %180

179:                                              ; preds = %61
  br label %180

180:                                              ; preds = %179, %178, %157, %132, %127, %126, %101, %74
  br label %181

181:                                              ; preds = %10, %16, %180, %60
  ret void
}

declare dso_local i32 @BB_END(i32) #1

declare dso_local i32 @can_predict_insn_p(i32) #1

declare dso_local i32 @get_condition(i32, i32*, i32, i32) #1

declare dso_local i64 @COMPARISON_P(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REG_POINTER(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @predict_insn_def(i32, i32, i32) #1

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
