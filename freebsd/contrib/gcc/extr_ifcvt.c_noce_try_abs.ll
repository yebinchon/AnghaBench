; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_abs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i64, i64, i64, i64, i64, i32, i32 }

@no_new_pseudos = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@NEG = common dso_local global i32 0, align 4
@SYMBOL_REF = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i64 0, align 8
@const1_rtx = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*)* @noce_try_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_try_abs(%struct.noce_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  %15 = load i64, i64* @no_new_pseudos, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %247

19:                                               ; preds = %1
  %20 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %21 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %24 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @GET_CODE(i64 %26)
  %28 = load i32, i32* @NEG, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @XEXP(i64 %31, i32 0)
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @rtx_equal_p(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %55

37:                                               ; preds = %30, %19
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @GET_CODE(i64 %38)
  %40 = load i32, i32* @NEG, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @XEXP(i64 %43, i32 0)
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @rtx_equal_p(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %9, align 8
  store i32 1, i32* %11, align 4
  br label %54

52:                                               ; preds = %42, %37
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %2, align 4
  br label %247

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @noce_get_alt_condition(%struct.noce_if_info* %56, i64 %57, i64* %5)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %2, align 4
  br label %247

63:                                               ; preds = %55
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @XEXP(i64 %64, i32 0)
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @rtx_equal_p(i64 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @XEXP(i64 %70, i32 1)
  store i64 %71, i64* %10, align 8
  br label %88

72:                                               ; preds = %63
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @XEXP(i64 %73, i32 1)
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @rtx_equal_p(i64 %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @XEXP(i64 %79, i32 0)
  store i64 %80, i64* %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %11, align 4
  br label %87

85:                                               ; preds = %72
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %2, align 4
  br label %247

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @REG_P(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %88
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @prev_nonnote_insn(i64 %93)
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i64, i64* %13, align 8
  %99 = call i64 @single_set(i64 %98)
  store i64 %99, i64* %12, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @SET_DEST(i64 %102)
  %104 = load i64, i64* %10, align 8
  %105 = call i64 @rtx_equal_p(i64 %103, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load i64, i64* %13, align 8
  %109 = call i64 @find_reg_equal_equiv_note(i64 %108)
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i64, i64* %14, align 8
  %114 = call i64 @XEXP(i64 %113, i32 0)
  store i64 %114, i64* %10, align 8
  br label %118

115:                                              ; preds = %107
  %116 = load i64, i64* %12, align 8
  %117 = call i64 @SET_SRC(i64 %116)
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %115, %112
  br label %121

119:                                              ; preds = %101, %97, %92
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %2, align 4
  br label %247

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i64, i64* %10, align 8
  %124 = call i64 @MEM_P(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load i64, i64* %10, align 8
  %128 = call i64 @XEXP(i64 %127, i32 0)
  %129 = call i32 @GET_CODE(i64 %128)
  %130 = load i32, i32* @SYMBOL_REF, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load i64, i64* %10, align 8
  %134 = call i64 @XEXP(i64 %133, i32 0)
  %135 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i64, i64* %10, align 8
  %139 = call i64 @XEXP(i64 %138, i32 0)
  %140 = call i64 @get_pool_constant(i64 %139)
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %137, %132, %126, %122
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* @constm1_rtx, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load i64, i64* %4, align 8
  %147 = call i32 @GET_CODE(i64 %146)
  %148 = icmp eq i32 %147, 134
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %169

150:                                              ; preds = %145, %141
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* @const1_rtx, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i64, i64* %4, align 8
  %156 = call i32 @GET_CODE(i64 %155)
  %157 = icmp eq i32 %156, 132
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %168

159:                                              ; preds = %154, %150
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* %9, align 8
  %162 = call i32 @GET_MODE(i64 %161)
  %163 = call i64 @CONST0_RTX(i32 %162)
  %164 = icmp ne i64 %160, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @FALSE, align 4
  store i32 %166, i32* %2, align 4
  br label %247

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %158
  br label %169

169:                                              ; preds = %168, %149
  %170 = load i64, i64* %4, align 8
  %171 = call i32 @GET_CODE(i64 %170)
  switch i32 %171, label %178 [
    i32 132, label %172
    i32 133, label %172
    i32 128, label %172
    i32 129, label %172
    i32 134, label %177
    i32 135, label %177
    i32 130, label %177
    i32 131, label %177
  ]

172:                                              ; preds = %169, %169, %169, %169
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %11, align 4
  br label %180

177:                                              ; preds = %169, %169, %169, %169
  br label %180

178:                                              ; preds = %169
  %179 = load i32, i32* @FALSE, align 4
  store i32 %179, i32* %2, align 4
  br label %247

180:                                              ; preds = %177, %172
  %181 = call i32 (...) @start_sequence()
  %182 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %183 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @GET_MODE(i64 %184)
  %186 = load i64, i64* %9, align 8
  %187 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %188 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @expand_abs_nojump(i32 %185, i64 %186, i64 %189, i32 1)
  store i64 %190, i64* %6, align 8
  %191 = load i64, i64* %6, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %180
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load i64, i64* %6, align 8
  %198 = call i32 @GET_MODE(i64 %197)
  %199 = load i32, i32* @NEG, align 4
  %200 = load i64, i64* %6, align 8
  %201 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %202 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @expand_simple_unop(i32 %198, i32 %199, i64 %200, i64 %203, i32 0)
  store i64 %204, i64* %6, align 8
  br label %205

205:                                              ; preds = %196, %193, %180
  %206 = load i64, i64* %6, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = call i32 (...) @end_sequence()
  %210 = load i32, i32* @FALSE, align 4
  store i32 %210, i32* %2, align 4
  br label %247

211:                                              ; preds = %205
  %212 = load i64, i64* %6, align 8
  %213 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %214 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %212, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %219 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* %6, align 8
  %222 = call i32 @noce_emit_move_insn(i64 %220, i64 %221)
  br label %223

223:                                              ; preds = %217, %211
  %224 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %225 = call i64 @end_ifcvt_sequence(%struct.noce_if_info* %224)
  store i64 %225, i64* %7, align 8
  %226 = load i64, i64* %7, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = load i32, i32* @FALSE, align 4
  store i32 %229, i32* %2, align 4
  br label %247

230:                                              ; preds = %223
  %231 = load i64, i64* %7, align 8
  %232 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %233 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %236 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @INSN_LOCATOR(i32 %237)
  %239 = call i32 @emit_insn_before_setloc(i64 %231, i32 %234, i32 %238)
  %240 = load i64, i64* %4, align 8
  %241 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %242 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %241, i32 0, i32 4
  store i64 %240, i64* %242, align 8
  %243 = load i64, i64* %5, align 8
  %244 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %245 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %244, i32 0, i32 3
  store i64 %243, i64* %245, align 8
  %246 = load i32, i32* @TRUE, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %230, %228, %208, %178, %165, %119, %85, %61, %52, %17
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @noce_get_alt_condition(%struct.noce_if_info*, i64, i64*) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @prev_nonnote_insn(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @find_reg_equal_equiv_note(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i64) #1

declare dso_local i64 @get_pool_constant(i64) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @expand_abs_nojump(i32, i64, i64, i32) #1

declare dso_local i64 @expand_simple_unop(i32, i32, i64, i64, i32) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @noce_emit_move_insn(i64, i64) #1

declare dso_local i64 @end_ifcvt_sequence(%struct.noce_if_info*) #1

declare dso_local i32 @emit_insn_before_setloc(i64, i32, i32) #1

declare dso_local i32 @INSN_LOCATOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
