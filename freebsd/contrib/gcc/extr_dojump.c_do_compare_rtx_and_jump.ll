; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_compare_rtx_and_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_compare_rtx_and_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@ccp_jump = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_compare_rtx_and_jump(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %20 = load i64, i64* %16, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %8
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @FLOAT_MODE_P(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %15, align 8
  store i64 %27, i64* %16, align 8
  store i64 0, i64* %15, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @reverse_condition(i32 %28)
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %26, %22, %8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @swap_commutative_operands_p(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %17, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @swap_condition(i32 %39)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = call i32 (...) @do_pending_stack_adjust()
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @unsigned_condition(i32 %46)
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %47, %45 ], [ %49, %48 ]
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @VOIDmode, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @simplify_relational_operation(i32 %52, i32 %53, i32 %54, i64 %55, i64 %56)
  store i64 %57, i64* %17, align 8
  %58 = icmp ne i64 0, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %50
  %60 = load i64, i64* %17, align 8
  %61 = call i64 @CONSTANT_P(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* @const0_rtx, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %17, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @CONST0_RTX(i32 %69)
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %63
  %73 = load i64, i64* %15, align 8
  br label %76

74:                                               ; preds = %67
  %75 = load i64, i64* %16, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  store i64 %77, i64* %19, align 8
  %78 = load i64, i64* %19, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i64, i64* %19, align 8
  %82 = call i32 @emit_jump(i64 %81)
  br label %83

83:                                               ; preds = %80, %76
  br label %219

84:                                               ; preds = %59
  %85 = load i64, i64* %17, align 8
  %86 = call i32 @GET_CODE(i64 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i64, i64* %17, align 8
  %88 = call i32 @GET_MODE(i64 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i64, i64* %17, align 8
  %90 = call i64 @XEXP(i64 %89, i32 0)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %17, align 8
  %92 = call i64 @XEXP(i64 %91, i32 1)
  store i64 %92, i64* %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 133
  br i1 %94, label %104, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 135
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 131
  br label %104

104:                                              ; preds = %101, %98, %95, %84
  %105 = phi i1 [ true, %98 ], [ true, %95 ], [ true, %84 ], [ %103, %101 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %104, %50
  %108 = load i64, i64* %16, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  store i32 1, i32* %18, align 4
  %111 = call i64 (...) @gen_label_rtx()
  store i64 %111, i64* %16, align 8
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i32, i32* %13, align 4
  %114 = call i64 @GET_MODE_CLASS(i32 %113)
  %115 = load i64, i64* @MODE_INT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %198

117:                                              ; preds = %112
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @ccp_jump, align 4
  %121 = call i32 @can_compare_p(i32 %118, i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %198, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %11, align 4
  switch i32 %124, label %195 [
    i32 129, label %125
    i32 131, label %132
    i32 133, label %139
    i32 135, label %146
    i32 130, label %153
    i32 132, label %160
    i32 134, label %167
    i32 136, label %174
    i32 137, label %181
    i32 128, label %188
  ]

125:                                              ; preds = %123
  %126 = load i32, i32* %13, align 4
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %16, align 8
  %131 = call i32 @do_jump_by_parts_greater_rtx(i32 %126, i32 1, i64 %127, i64 %128, i64 %129, i64 %130)
  br label %197

132:                                              ; preds = %123
  %133 = load i32, i32* %13, align 4
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %15, align 8
  %138 = call i32 @do_jump_by_parts_greater_rtx(i32 %133, i32 1, i64 %134, i64 %135, i64 %136, i64 %137)
  br label %197

139:                                              ; preds = %123
  %140 = load i32, i32* %13, align 4
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %16, align 8
  %145 = call i32 @do_jump_by_parts_greater_rtx(i32 %140, i32 1, i64 %141, i64 %142, i64 %143, i64 %144)
  br label %197

146:                                              ; preds = %123
  %147 = load i32, i32* %13, align 4
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %15, align 8
  %152 = call i32 @do_jump_by_parts_greater_rtx(i32 %147, i32 1, i64 %148, i64 %149, i64 %150, i64 %151)
  br label %197

153:                                              ; preds = %123
  %154 = load i32, i32* %13, align 4
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %16, align 8
  %159 = call i32 @do_jump_by_parts_greater_rtx(i32 %154, i32 0, i64 %155, i64 %156, i64 %157, i64 %158)
  br label %197

160:                                              ; preds = %123
  %161 = load i32, i32* %13, align 4
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* %16, align 8
  %165 = load i64, i64* %15, align 8
  %166 = call i32 @do_jump_by_parts_greater_rtx(i32 %161, i32 0, i64 %162, i64 %163, i64 %164, i64 %165)
  br label %197

167:                                              ; preds = %123
  %168 = load i32, i32* %13, align 4
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* %15, align 8
  %172 = load i64, i64* %16, align 8
  %173 = call i32 @do_jump_by_parts_greater_rtx(i32 %168, i32 0, i64 %169, i64 %170, i64 %171, i64 %172)
  br label %197

174:                                              ; preds = %123
  %175 = load i32, i32* %13, align 4
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* %16, align 8
  %179 = load i64, i64* %15, align 8
  %180 = call i32 @do_jump_by_parts_greater_rtx(i32 %175, i32 0, i64 %176, i64 %177, i64 %178, i64 %179)
  br label %197

181:                                              ; preds = %123
  %182 = load i32, i32* %13, align 4
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %15, align 8
  %186 = load i64, i64* %16, align 8
  %187 = call i32 @do_jump_by_parts_equality_rtx(i32 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  br label %197

188:                                              ; preds = %123
  %189 = load i32, i32* %13, align 4
  %190 = load i64, i64* %9, align 8
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* %16, align 8
  %193 = load i64, i64* %15, align 8
  %194 = call i32 @do_jump_by_parts_equality_rtx(i32 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  br label %197

195:                                              ; preds = %123
  %196 = call i32 (...) @gcc_unreachable()
  br label %197

197:                                              ; preds = %195, %188, %181, %174, %167, %160, %153, %146, %139, %132, %125
  br label %207

198:                                              ; preds = %117, %112
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* %10, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i64, i64* %14, align 8
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load i64, i64* %16, align 8
  %206 = call i32 @emit_cmp_and_jump_insns(i64 %199, i64 %200, i32 %201, i64 %202, i32 %203, i32 %204, i64 %205)
  br label %207

207:                                              ; preds = %198, %197
  %208 = load i64, i64* %15, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i64, i64* %15, align 8
  %212 = call i32 @emit_jump(i64 %211)
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i32, i32* %18, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i64, i64* %16, align 8
  %218 = call i32 @emit_label(i64 %217)
  br label %219

219:                                              ; preds = %83, %216, %213
  ret void
}

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i64 @swap_commutative_operands_p(i64, i64) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i32 @do_pending_stack_adjust(...) #1

declare dso_local i32 @unsigned_condition(i32) #1

declare dso_local i64 @simplify_relational_operation(i32, i32, i32, i64, i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i32 @emit_jump(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @can_compare_p(i32, i32, i32) #1

declare dso_local i32 @do_jump_by_parts_greater_rtx(i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @do_jump_by_parts_equality_rtx(i32, i64, i64, i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i64, i32, i64, i32, i32, i64) #1

declare dso_local i32 @emit_label(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
