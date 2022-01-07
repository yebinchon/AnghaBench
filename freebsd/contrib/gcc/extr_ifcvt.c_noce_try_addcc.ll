; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_addcc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_addcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i32, i32, i64, i32, i64, i64 }

@no_new_pseudos = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BRANCH_COST = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i32 0, align 4
@STORE_FLAG_VALUE = common dso_local global i32 0, align 4
@MINUS = common dso_local global i64 0, align 8
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*)* @noce_try_addcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_try_addcc(%struct.noce_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  %10 = load i32, i32* @no_new_pseudos, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %248, label %12

12:                                               ; preds = %1
  %13 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %14 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @GET_CODE(i64 %15)
  %17 = load i64, i64* @PLUS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %248

19:                                               ; preds = %12
  %20 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %21 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @XEXP(i64 %22, i32 0)
  %24 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %25 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @rtx_equal_p(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %248

29:                                               ; preds = %19
  %30 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %31 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %34 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @reversed_comparison_code(i64 %32, i32 %35)
  %37 = load i64, i64* @UNKNOWN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %248

39:                                               ; preds = %29
  %40 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %41 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %45 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @reversed_comparison_code(i64 %43, i32 %46)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @XEXP(i64 %49, i32 0)
  %51 = load i32, i32* @VOIDmode, align 4
  %52 = call i64 @general_operand(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %135

54:                                               ; preds = %39
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @XEXP(i64 %55, i32 1)
  %57 = load i32, i32* @VOIDmode, align 4
  %58 = call i64 @general_operand(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %135

60:                                               ; preds = %54
  %61 = call i32 (...) @start_sequence()
  %62 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %63 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @XEXP(i64 %66, i32 0)
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @XEXP(i64 %68, i32 1)
  %70 = load i32, i32* @VOIDmode, align 4
  %71 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %72 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %75 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @XEXP(i64 %76, i32 1)
  %78 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %79 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @GET_MODE(i64 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @LTU, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %60
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @GEU, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @LEU, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @GTU, align 4
  %96 = icmp eq i32 %94, %95
  br label %97

97:                                               ; preds = %93, %89, %85, %60
  %98 = phi i1 [ true, %89 ], [ true, %85 ], [ true, %60 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i64 @emit_conditional_add(i64 %64, i32 %65, i32 %67, i32 %69, i32 %70, i32 %73, i32 %77, i32 %81, i32 %99)
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = load i64, i64* %4, align 8
  %105 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %106 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %111 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @noce_emit_move_insn(i64 %112, i64 %113)
  br label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %117 = call i64 @end_ifcvt_sequence(%struct.noce_if_info* %116)
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %2, align 4
  br label %250

122:                                              ; preds = %115
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %125 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %128 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @INSN_LOCATOR(i32 %129)
  %131 = call i32 @emit_insn_before_setloc(i64 %123, i32 %126, i32 %130)
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %2, align 4
  br label %250

133:                                              ; preds = %97
  %134 = call i32 (...) @end_sequence()
  br label %135

135:                                              ; preds = %133, %54, %39
  %136 = load i32, i32* @BRANCH_COST, align 4
  %137 = icmp sge i32 %136, 2
  br i1 %137, label %138, label %247

138:                                              ; preds = %135
  %139 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %140 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @XEXP(i64 %141, i32 1)
  %143 = load i32, i32* @const1_rtx, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %152, label %145

145:                                              ; preds = %138
  %146 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %147 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @XEXP(i64 %148, i32 1)
  %150 = load i32, i32* @constm1_rtx, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %247

152:                                              ; preds = %145, %138
  %153 = call i32 (...) @start_sequence()
  %154 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %155 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %156 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @XEXP(i64 %157, i32 1)
  %159 = call i32 @INTVAL(i32 %158)
  %160 = icmp eq i32 %154, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %179

162:                                              ; preds = %152
  %163 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %164 = sub nsw i32 0, %163
  %165 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %166 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @XEXP(i64 %167, i32 1)
  %169 = call i32 @INTVAL(i32 %168)
  %170 = icmp eq i32 %164, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %178

172:                                              ; preds = %162
  store i32 0, i32* %6, align 4
  %173 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %174 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @XEXP(i64 %175, i32 1)
  %177 = call i32 @INTVAL(i32 %176)
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %172, %171
  br label %179

179:                                              ; preds = %178, %161
  %180 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %181 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %182 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @GET_MODE(i64 %183)
  %185 = call i32 @gen_reg_rtx(i32 %184)
  %186 = load i32, i32* %7, align 4
  %187 = call i64 @noce_emit_store_flag(%struct.noce_if_info* %180, i32 %185, i32 1, i32 %186)
  store i64 %187, i64* %4, align 8
  %188 = load i64, i64* %4, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %179
  %191 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %192 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @GET_MODE(i64 %193)
  %195 = load i32, i32* %6, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = load i64, i64* @MINUS, align 8
  br label %201

199:                                              ; preds = %190
  %200 = load i64, i64* @PLUS, align 8
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i64 [ %198, %197 ], [ %200, %199 ]
  %203 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %204 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load i64, i64* %4, align 8
  %207 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %208 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* @OPTAB_WIDEN, align 4
  %211 = call i64 @expand_simple_binop(i32 %194, i64 %202, i32 %205, i64 %206, i64 %209, i32 0, i32 %210)
  store i64 %211, i64* %4, align 8
  br label %212

212:                                              ; preds = %201, %179
  %213 = load i64, i64* %4, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %245

215:                                              ; preds = %212
  %216 = load i64, i64* %4, align 8
  %217 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %218 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %216, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %223 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %4, align 8
  %226 = call i32 @noce_emit_move_insn(i64 %224, i64 %225)
  br label %227

227:                                              ; preds = %221, %215
  %228 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %229 = call i64 @end_ifcvt_sequence(%struct.noce_if_info* %228)
  store i64 %229, i64* %5, align 8
  %230 = load i64, i64* %5, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %2, align 4
  br label %250

234:                                              ; preds = %227
  %235 = load i64, i64* %5, align 8
  %236 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %237 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %240 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @INSN_LOCATOR(i32 %241)
  %243 = call i32 @emit_insn_before_setloc(i64 %235, i32 %238, i32 %242)
  %244 = load i32, i32* @TRUE, align 4
  store i32 %244, i32* %2, align 4
  br label %250

245:                                              ; preds = %212
  %246 = call i32 (...) @end_sequence()
  br label %247

247:                                              ; preds = %245, %145, %135
  br label %248

248:                                              ; preds = %247, %29, %19, %12, %1
  %249 = load i32, i32* @FALSE, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %248, %234, %232, %122, %120
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @reversed_comparison_code(i64, i32) #1

declare dso_local i64 @general_operand(i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @emit_conditional_add(i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @noce_emit_move_insn(i64, i64) #1

declare dso_local i64 @end_ifcvt_sequence(%struct.noce_if_info*) #1

declare dso_local i32 @emit_insn_before_setloc(i64, i32, i32) #1

declare dso_local i32 @INSN_LOCATOR(i32) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @noce_emit_store_flag(%struct.noce_if_info*, i32, i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i64 @expand_simple_binop(i32, i64, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
