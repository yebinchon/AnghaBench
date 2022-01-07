; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_hash_scan_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_hash_scan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i64 }

@CALL = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@REG_EH_REGION = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@flag_gcse_las = common dso_local global i64 0, align 8
@REG_EQUIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.hash_table*)* @hash_scan_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_scan_set(i64 %0, i64 %1, %struct.hash_table* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hash_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.hash_table* %2, %struct.hash_table** %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @SET_SRC(i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @SET_DEST(i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @GET_CODE(i64 %21)
  %23 = load i64, i64* @CALL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %29 = call i32 @hash_scan_call(i64 %26, i64 %27, %struct.hash_table* %28)
  br label %263

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @REG_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %187

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @REGNO(i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @find_reg_equal_equiv_note(i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %34
  %42 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %43 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @XEXP(i64 %47, i32 0)
  %49 = call i64 @gcse_constant_p(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %63

51:                                               ; preds = %41
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @XEXP(i64 %52, i32 0)
  %54 = call i64 @want_to_gcse_p(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51, %46
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @XEXP(i64 %57, i32 0)
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* @VOIDmode, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @gen_rtx_SET(i32 %59, i64 %60, i64 %61)
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %56, %51, %46, %34
  %64 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %132, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %71 = icmp uge i32 %69, %70
  br i1 %71, label %72, label %132

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @GET_MODE(i64 %73)
  %75 = call i64 @can_copy_p(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %132

77:                                               ; preds = %72
  %78 = load i64, i64* %5, align 8
  %79 = load i32, i32* @REG_EH_REGION, align 4
  %80 = load i64, i64* @NULL_RTX, align 8
  %81 = call i64 @find_reg_note(i64 %78, i32 %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %132, label %83

83:                                               ; preds = %77
  %84 = load i64, i64* %7, align 8
  %85 = call i64 @want_to_gcse_p(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %132

87:                                               ; preds = %83
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @set_noop_p(i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %132, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @NULL_RTX, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %9, align 8
  %97 = call i64 @XEXP(i64 %96, i32 0)
  %98 = call i64 @MEM_P(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %132, label %100

100:                                              ; preds = %95, %91
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i64 @oprs_anticipatable_p(i64 %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @single_set(i64 %106)
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %105, %100
  %110 = phi i1 [ false, %100 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %12, align 4
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @oprs_available_p(i64 %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @JUMP_P(i64 %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %116, %109
  %122 = phi i1 [ false, %109 ], [ %120, %116 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %13, align 4
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @GET_MODE(i64 %125)
  %127 = load i64, i64* %5, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %131 = call i32 @insert_expr_in_table(i64 %124, i32 %126, i64 %127, i32 %128, i32 %129, %struct.hash_table* %130)
  br label %186

132:                                              ; preds = %95, %87, %83, %77, %72, %68, %63
  %133 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %134 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %185

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %140 = icmp uge i32 %138, %139
  br i1 %140, label %141, label %185

141:                                              ; preds = %137
  %142 = load i64, i64* %7, align 8
  %143 = call i64 @REG_P(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @REGNO(i64 %146)
  %148 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %149 = icmp uge i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @GET_MODE(i64 %151)
  %153 = call i64 @can_copy_p(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @REGNO(i64 %156)
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %155, %150, %145, %141
  %161 = load i64, i64* %7, align 8
  %162 = call i64 @gcse_constant_p(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %185

164:                                              ; preds = %160, %155
  %165 = load i64, i64* %5, align 8
  %166 = load i64, i64* %5, align 8
  %167 = call i32 @BLOCK_FOR_INSN(i64 %166)
  %168 = call i64 @BB_END(i32 %167)
  %169 = icmp eq i64 %165, %168
  br i1 %169, label %180, label %170

170:                                              ; preds = %164
  %171 = load i64, i64* %5, align 8
  %172 = call i64 @next_nonnote_insn(i64 %171)
  store i64 %172, i64* %11, align 8
  %173 = load i64, i64* @NULL_RTX, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load i64, i64* %4, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i64 @oprs_available_p(i64 %176, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175, %164
  %181 = load i64, i64* %4, align 8
  %182 = load i64, i64* %5, align 8
  %183 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %184 = call i32 @insert_set_in_table(i64 %181, i64 %182, %struct.hash_table* %183)
  br label %185

185:                                              ; preds = %180, %175, %170, %160, %137, %132
  br label %186

186:                                              ; preds = %185, %121
  br label %262

187:                                              ; preds = %30
  %188 = load i64, i64* @flag_gcse_las, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %261

190:                                              ; preds = %187
  %191 = load i64, i64* %7, align 8
  %192 = call i64 @REG_P(i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %261

194:                                              ; preds = %190
  %195 = load i64, i64* %8, align 8
  %196 = call i64 @MEM_P(i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %261

198:                                              ; preds = %194
  %199 = load i64, i64* %7, align 8
  %200 = call i32 @REGNO(i64 %199)
  store i32 %200, i32* %14, align 4
  %201 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %202 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %260, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %208 = icmp uge i32 %206, %207
  br i1 %208, label %209, label %260

209:                                              ; preds = %205
  %210 = load i64, i64* %7, align 8
  %211 = call i32 @GET_MODE(i64 %210)
  %212 = call i64 @can_copy_p(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %260

214:                                              ; preds = %209
  %215 = load i64, i64* %5, align 8
  %216 = load i32, i32* @REG_EH_REGION, align 4
  %217 = load i64, i64* @NULL_RTX, align 8
  %218 = call i64 @find_reg_note(i64 %215, i32 %216, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %260, label %220

220:                                              ; preds = %214
  %221 = load i64, i64* %8, align 8
  %222 = call i64 @want_to_gcse_p(i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %260

224:                                              ; preds = %220
  %225 = load i64, i64* %4, align 8
  %226 = call i32 @set_noop_p(i64 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %260, label %228

228:                                              ; preds = %224
  %229 = load i64, i64* %5, align 8
  %230 = load i32, i32* @REG_EQUIV, align 4
  %231 = load i64, i64* @NULL_RTX, align 8
  %232 = call i64 @find_reg_note(i64 %229, i32 %230, i64 %231)
  store i64 %232, i64* %9, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %228
  %235 = load i64, i64* %9, align 8
  %236 = call i64 @XEXP(i64 %235, i32 0)
  %237 = call i64 @MEM_P(i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %260, label %239

239:                                              ; preds = %234, %228
  store i32 0, i32* %15, align 4
  %240 = load i64, i64* %8, align 8
  %241 = load i64, i64* %5, align 8
  %242 = call i64 @oprs_available_p(i64 %240, i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load i64, i64* %5, align 8
  %246 = call i32 @JUMP_P(i64 %245)
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  br label %249

249:                                              ; preds = %244, %239
  %250 = phi i1 [ false, %239 ], [ %248, %244 ]
  %251 = zext i1 %250 to i32
  store i32 %251, i32* %16, align 4
  %252 = load i64, i64* %8, align 8
  %253 = load i64, i64* %8, align 8
  %254 = call i32 @GET_MODE(i64 %253)
  %255 = load i64, i64* %5, align 8
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* %16, align 4
  %258 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %259 = call i32 @insert_expr_in_table(i64 %252, i32 %254, i64 %255, i32 %256, i32 %257, %struct.hash_table* %258)
  br label %260

260:                                              ; preds = %249, %234, %224, %220, %214, %209, %205, %198
  br label %261

261:                                              ; preds = %260, %194, %190, %187
  br label %262

262:                                              ; preds = %261, %186
  br label %263

263:                                              ; preds = %262, %25
  ret void
}

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @hash_scan_call(i64, i64, %struct.hash_table*) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @find_reg_equal_equiv_note(i64) #1

declare dso_local i64 @gcse_constant_p(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @want_to_gcse_p(i64) #1

declare dso_local i64 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @can_copy_p(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @find_reg_note(i64, i32, i64) #1

declare dso_local i32 @set_noop_p(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @oprs_anticipatable_p(i64, i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @oprs_available_p(i64, i64) #1

declare dso_local i32 @JUMP_P(i64) #1

declare dso_local i32 @insert_expr_in_table(i64, i32, i64, i32, i32, %struct.hash_table*) #1

declare dso_local i64 @BB_END(i32) #1

declare dso_local i32 @BLOCK_FOR_INSN(i64) #1

declare dso_local i64 @next_nonnote_insn(i64) #1

declare dso_local i32 @insert_set_in_table(i64, i64, %struct.hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
