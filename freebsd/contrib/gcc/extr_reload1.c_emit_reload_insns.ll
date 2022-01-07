; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_emit_reload_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_emit_reload_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64, i8*, i64, i64, i32, i32 }
%struct.insn_chain = type { i8* }

@reg_reloaded_died = common dso_local global i32 0, align 4
@reload_n_operands = common dso_local global i32 0, align 4
@other_output_reload_insns = common dso_local global i64* null, align 8
@outaddr_address_reload_insns = common dso_local global i64* null, align 8
@output_address_reload_insns = common dso_local global i64* null, align 8
@output_reload_insns = common dso_local global i64* null, align 8
@inpaddr_address_reload_insns = common dso_local global i64* null, align 8
@input_address_reload_insns = common dso_local global i64* null, align 8
@input_reload_insns = common dso_local global i64* null, align 8
@other_input_address_reload_insns = common dso_local global i64 0, align 8
@other_input_reload_insns = common dso_local global i64 0, align 8
@operand_reload_insns = common dso_local global i64 0, align 8
@other_operand_reload_insns = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"\0AReloads for insn # %d\0A\00", align 1
@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_4__* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@new_spill_reg_store = common dso_local global i8** null, align 8
@reload_order = common dso_local global i32* null, align 8
@reload_spill_index = common dso_local global i32* null, align 8
@reload_inherited = common dso_local global i64* null, align 8
@reload_override_in = common dso_local global i64* null, align 8
@SUBREG = common dso_local global i64 0, align 8
@reg_has_output_reload = common dso_local global i32 0, align 4
@reg_last_reload_reg = common dso_local global i8** null, align 8
@reg_reloaded_contents = common dso_local global i32* null, align 8
@spill_reg_store = common dso_local global i8** null, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@reg_reloaded_valid = common dso_local global i32 0, align 4
@reg_reloaded_call_part_clobbered = common dso_local global i32 0, align 4
@spill_reg_stored_to = common dso_local global i8** null, align 8
@regno_reg_rtx = common dso_local global i8** null, align 8
@reg_reloaded_dead = common dso_local global i32 0, align 4
@reg_reloaded_insn = common dso_local global i8** null, align 8
@NULL_RTX = common dso_local global i8* null, align 8
@REG_DEAD = common dso_local global i32 0, align 4
@reg_is_output_reload = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.insn_chain*)* @emit_reload_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_reload_insns(%struct.insn_chain* %0) #0 {
  %2 = alloca %struct.insn_chain*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  store %struct.insn_chain* %0, %struct.insn_chain** %2, align 8
  %33 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %34 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %3, align 8
  %36 = load i32, i32* @reg_reloaded_died, align 4
  %37 = call i32 @CLEAR_HARD_REG_SET(i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %71, %1
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @reload_n_operands, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load i64*, i64** @other_output_reload_insns, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 0, i64* %46, align 8
  %47 = load i64*, i64** @outaddr_address_reload_insns, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 0, i64* %50, align 8
  %51 = load i64*, i64** @output_address_reload_insns, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 0, i64* %54, align 8
  %55 = load i64*, i64** @output_reload_insns, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i64*, i64** @inpaddr_address_reload_insns, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  %63 = load i64*, i64** @input_address_reload_insns, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 0, i64* %66, align 8
  %67 = load i64*, i64** @input_reload_insns, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %42
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %38

74:                                               ; preds = %38
  store i64 0, i64* @other_input_address_reload_insns, align 8
  store i64 0, i64* @other_input_reload_insns, align 8
  store i64 0, i64* @operand_reload_insns, align 8
  store i64 0, i64* @other_operand_reload_insns, align 8
  %75 = load i64, i64* @dump_file, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i64, i64* @dump_file, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @INSN_UID(i8* %79)
  %81 = call i32 @fprintf(i64 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* @dump_file, align 8
  %83 = call i32 @debug_reload_to_stream(i64 %82)
  br label %84

84:                                               ; preds = %77, %74
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %133, %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @n_reloads, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %136

89:                                               ; preds = %85
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %118

97:                                               ; preds = %89
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @REGNO(i8* %103)
  %105 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %97
  %108 = load i8**, i8*** @new_spill_reg_store, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @REGNO(i8* %114)
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %108, i64 %116
  store i8* null, i8** %117, align 8
  br label %118

118:                                              ; preds = %107, %97, %89
  %119 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @do_input_reload(%struct.insn_chain* %119, %struct.TYPE_4__* %123, i32 %124)
  %126 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @do_output_reload(%struct.insn_chain* %126, %struct.TYPE_4__* %130, i32 %131)
  br label %133

133:                                              ; preds = %118
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %85

136:                                              ; preds = %85
  %137 = load i64, i64* @other_input_address_reload_insns, align 8
  %138 = load i8*, i8** %3, align 8
  %139 = call i32 @emit_insn_before(i64 %137, i8* %138)
  %140 = load i64, i64* @other_input_reload_insns, align 8
  %141 = load i8*, i8** %3, align 8
  %142 = call i32 @emit_insn_before(i64 %140, i8* %141)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %169, %136
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @reload_n_operands, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %172

147:                                              ; preds = %143
  %148 = load i64*, i64** @inpaddr_address_reload_insns, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i8*, i8** %3, align 8
  %154 = call i32 @emit_insn_before(i64 %152, i8* %153)
  %155 = load i64*, i64** @input_address_reload_insns, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i8*, i8** %3, align 8
  %161 = call i32 @emit_insn_before(i64 %159, i8* %160)
  %162 = load i64*, i64** @input_reload_insns, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i8*, i8** %3, align 8
  %168 = call i32 @emit_insn_before(i64 %166, i8* %167)
  br label %169

169:                                              ; preds = %147
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  br label %143

172:                                              ; preds = %143
  %173 = load i64, i64* @other_operand_reload_insns, align 8
  %174 = load i8*, i8** %3, align 8
  %175 = call i32 @emit_insn_before(i64 %173, i8* %174)
  %176 = load i64, i64* @operand_reload_insns, align 8
  %177 = load i8*, i8** %3, align 8
  %178 = call i32 @emit_insn_before(i64 %176, i8* %177)
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %212, %172
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @reload_n_operands, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %215

183:                                              ; preds = %179
  %184 = load i64*, i64** @outaddr_address_reload_insns, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i8*, i8** %3, align 8
  %190 = call i8* @emit_insn_after(i64 %188, i8* %189)
  store i8* %190, i8** %5, align 8
  %191 = load i64*, i64** @output_address_reload_insns, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i8*, i8** %5, align 8
  %197 = call i8* @emit_insn_after(i64 %195, i8* %196)
  store i8* %197, i8** %5, align 8
  %198 = load i64*, i64** @output_reload_insns, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = call i8* @emit_insn_after(i64 %202, i8* %203)
  store i8* %204, i8** %5, align 8
  %205 = load i64*, i64** @other_output_reload_insns, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i8*, i8** %5, align 8
  %211 = call i8* @emit_insn_after(i64 %209, i8* %210)
  br label %212

212:                                              ; preds = %183
  %213 = load i32, i32* %4, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %4, align 4
  br label %179

215:                                              ; preds = %179
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %1295, %215
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @n_reloads, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %1298

220:                                              ; preds = %216
  %221 = load i32*, i32** @reload_order, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %6, align 4
  %226 = load i32*, i32** @reload_spill_index, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %7, align 4
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %312

238:                                              ; preds = %220
  %239 = load i64*, i64** @reload_inherited, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %312, label %245

245:                                              ; preds = %238
  %246 = load i64*, i64** @reload_override_in, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %312, label %252

252:                                              ; preds = %245
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = inttoptr i64 %258 to i8*
  store i8* %259, i8** %8, align 8
  %260 = load i8*, i8** %8, align 8
  %261 = call i64 @GET_CODE(i8* %260)
  %262 = load i64, i64* @SUBREG, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %252
  %265 = load i8*, i8** %8, align 8
  %266 = call i8* @SUBREG_REG(i8* %265)
  store i8* %266, i8** %8, align 8
  br label %267

267:                                              ; preds = %264, %252
  %268 = load i8*, i8** %8, align 8
  %269 = call i64 @REG_P(i8* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %311

271:                                              ; preds = %267
  %272 = load i8*, i8** %8, align 8
  %273 = call i32 @REGNO(i8* %272)
  %274 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %275 = icmp sge i32 %273, %274
  br i1 %275, label %276, label %311

276:                                              ; preds = %271
  %277 = load i8*, i8** %8, align 8
  %278 = call i32 @REGNO(i8* %277)
  %279 = call i32 @REGNO_REG_SET_P(i32* @reg_has_output_reload, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %311, label %281

281:                                              ; preds = %276
  %282 = load i8*, i8** %8, align 8
  %283 = call i32 @REGNO(i8* %282)
  store i32 %283, i32* %9, align 4
  %284 = load i8**, i8*** @reg_last_reload_reg, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8*, i8** %284, i64 %286
  %288 = load i8*, i8** %287, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %310

290:                                              ; preds = %281
  %291 = load i8**, i8*** @reg_last_reload_reg, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %291, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @REGNO(i8* %295)
  store i32 %296, i32* %10, align 4
  %297 = load i32*, i32** @reg_reloaded_contents, align 8
  %298 = load i32, i32* %10, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %9, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %309

304:                                              ; preds = %290
  %305 = load i8**, i8*** @spill_reg_store, align 8
  %306 = load i32, i32* %10, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8*, i8** %305, i64 %307
  store i8* null, i8** %308, align 8
  br label %309

309:                                              ; preds = %304, %290
  br label %310

310:                                              ; preds = %309, %281
  br label %311

311:                                              ; preds = %310, %276, %271, %267
  br label %312

312:                                              ; preds = %311, %245, %238, %220
  %313 = load i32, i32* %7, align 4
  %314 = icmp sge i32 %313, 0
  br i1 %314, label %315, label %974

315:                                              ; preds = %312
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %974

323:                                              ; preds = %315
  %324 = load i32**, i32*** @hard_regno_nregs, align 8
  %325 = load i32, i32* %7, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32*, i32** %324, i64 %326
  %328 = load i32*, i32** %327, align 8
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = call i64 @GET_MODE(i8* %334)
  %336 = getelementptr inbounds i32, i32* %328, i64 %335
  %337 = load i32, i32* %336, align 4
  store i32 %337, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %338

338:                                              ; preds = %363, %323
  %339 = load i32, i32* %12, align 4
  %340 = load i32, i32* %11, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %366

342:                                              ; preds = %338
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* %12, align 4
  %345 = add nsw i32 %343, %344
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %347 = load i32, i32* %6, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %353 = load i32, i32* %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 8
  %358 = call i64 @reload_reg_reaches_end_p(i32 %345, i32 %351, i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %342
  store i32 1, i32* %13, align 4
  br label %362

361:                                              ; preds = %342
  store i32 0, i32* %14, align 4
  br label %362

362:                                              ; preds = %361, %360
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %12, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %12, align 4
  br label %338

366:                                              ; preds = %338
  %367 = load i32, i32* %14, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %935

369:                                              ; preds = %366
  store i32 0, i32* %12, align 4
  br label %370

370:                                              ; preds = %385, %369
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %11, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %388

374:                                              ; preds = %370
  %375 = load i32, i32* @reg_reloaded_valid, align 4
  %376 = load i32, i32* %7, align 4
  %377 = load i32, i32* %12, align 4
  %378 = add nsw i32 %376, %377
  %379 = call i32 @CLEAR_HARD_REG_BIT(i32 %375, i32 %378)
  %380 = load i32, i32* @reg_reloaded_call_part_clobbered, align 4
  %381 = load i32, i32* %7, align 4
  %382 = load i32, i32* %12, align 4
  %383 = add nsw i32 %381, %382
  %384 = call i32 @CLEAR_HARD_REG_BIT(i32 %380, i32 %383)
  br label %385

385:                                              ; preds = %374
  %386 = load i32, i32* %12, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %12, align 4
  br label %370

388:                                              ; preds = %370
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 2
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %621

396:                                              ; preds = %388
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %398 = load i32, i32* %6, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 2
  %402 = load i64, i64* %401, align 8
  %403 = inttoptr i64 %402 to i8*
  %404 = call i64 @REG_P(i8* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %415, label %406

406:                                              ; preds = %396
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %408 = load i32, i32* %6, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 3
  %412 = load i8*, i8** %411, align 8
  %413 = call i64 @REG_P(i8* %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %621

415:                                              ; preds = %406, %396
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %417 = load i32, i32* %6, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = inttoptr i64 %421 to i8*
  %423 = call i64 @REG_P(i8* %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %433

425:                                              ; preds = %415
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %427 = load i32, i32* %6, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 2
  %431 = load i64, i64* %430, align 8
  %432 = inttoptr i64 %431 to i8*
  br label %458

433:                                              ; preds = %415
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %435 = load i32, i32* %6, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 3
  %439 = load i8*, i8** %438, align 8
  %440 = icmp ne i8* %439, null
  br i1 %440, label %441, label %448

441:                                              ; preds = %433
  %442 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 3
  %447 = load i8*, i8** %446, align 8
  br label %456

448:                                              ; preds = %433
  %449 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %450 = load i32, i32* %6, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = call i8* @XEXP(i64 %454, i32 0)
  br label %456

456:                                              ; preds = %448, %441
  %457 = phi i8* [ %447, %441 ], [ %455, %448 ]
  br label %458

458:                                              ; preds = %456, %425
  %459 = phi i8* [ %432, %425 ], [ %457, %456 ]
  store i8* %459, i8** %15, align 8
  %460 = load i8*, i8** %15, align 8
  %461 = call i32 @REGNO(i8* %460)
  store i32 %461, i32* %16, align 4
  %462 = load i32, i32* %16, align 4
  %463 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %464 = icmp sge i32 %462, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %458
  br label %481

466:                                              ; preds = %458
  %467 = load i32**, i32*** @hard_regno_nregs, align 8
  %468 = load i32, i32* %16, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32*, i32** %467, i64 %469
  %471 = load i32*, i32** %470, align 8
  %472 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %473 = load i32, i32* %6, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  %477 = load i8*, i8** %476, align 8
  %478 = call i64 @GET_MODE(i8* %477)
  %479 = getelementptr inbounds i32, i32* %471, i64 %478
  %480 = load i32, i32* %479, align 4
  br label %481

481:                                              ; preds = %466, %465
  %482 = phi i32 [ 1, %465 ], [ %480, %466 ]
  store i32 %482, i32* %17, align 4
  %483 = load i8**, i8*** @new_spill_reg_store, align 8
  %484 = load i32, i32* %7, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8*, i8** %483, i64 %485
  %487 = load i8*, i8** %486, align 8
  %488 = load i8**, i8*** @spill_reg_store, align 8
  %489 = load i32, i32* %7, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8*, i8** %488, i64 %490
  store i8* %487, i8** %491, align 8
  %492 = load i8*, i8** %15, align 8
  %493 = load i8**, i8*** @spill_reg_stored_to, align 8
  %494 = load i32, i32* %7, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8*, i8** %493, i64 %495
  store i8* %492, i8** %496, align 8
  %497 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %498 = load i32, i32* %6, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %500, i32 0, i32 0
  %502 = load i8*, i8** %501, align 8
  %503 = load i8**, i8*** @reg_last_reload_reg, align 8
  %504 = load i32, i32* %16, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8*, i8** %503, i64 %505
  store i8* %502, i8** %506, align 8
  %507 = load i32, i32* %16, align 4
  %508 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %509 = icmp slt i32 %507, %508
  br i1 %509, label %510, label %519

510:                                              ; preds = %481
  %511 = load i32, i32* %11, align 4
  %512 = load i32, i32* %17, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %514, label %519

514:                                              ; preds = %510
  %515 = load i32, i32* %6, align 4
  %516 = load i32, i32* %16, align 4
  %517 = call i64 @inherit_piecemeal_p(i32 %515, i32 %516)
  %518 = icmp ne i64 %517, 0
  br label %519

519:                                              ; preds = %514, %510, %481
  %520 = phi i1 [ false, %510 ], [ false, %481 ], [ %518, %514 ]
  %521 = zext i1 %520 to i32
  store i32 %521, i32* %18, align 4
  %522 = load i32, i32* %16, align 4
  %523 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %524 = icmp slt i32 %522, %523
  br i1 %524, label %525, label %560

525:                                              ; preds = %519
  store i32 1, i32* %12, align 4
  br label %526

526:                                              ; preds = %556, %525
  %527 = load i32, i32* %12, align 4
  %528 = load i32, i32* %17, align 4
  %529 = icmp slt i32 %527, %528
  br i1 %529, label %530, label %559

530:                                              ; preds = %526
  %531 = load i32, i32* %18, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %547

533:                                              ; preds = %530
  %534 = load i8**, i8*** @regno_reg_rtx, align 8
  %535 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %536 = load i32, i32* %6, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i64 %537
  %539 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %538, i32 0, i32 0
  %540 = load i8*, i8** %539, align 8
  %541 = call i32 @REGNO(i8* %540)
  %542 = load i32, i32* %12, align 4
  %543 = add nsw i32 %541, %542
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8*, i8** %534, i64 %544
  %546 = load i8*, i8** %545, align 8
  br label %548

547:                                              ; preds = %530
  br label %548

548:                                              ; preds = %547, %533
  %549 = phi i8* [ %546, %533 ], [ null, %547 ]
  %550 = load i8**, i8*** @reg_last_reload_reg, align 8
  %551 = load i32, i32* %16, align 4
  %552 = load i32, i32* %12, align 4
  %553 = add nsw i32 %551, %552
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i8*, i8** %550, i64 %554
  store i8* %549, i8** %555, align 8
  br label %556

556:                                              ; preds = %548
  %557 = load i32, i32* %12, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %12, align 4
  br label %526

559:                                              ; preds = %526
  br label %560

560:                                              ; preds = %559, %519
  store i32 0, i32* %12, align 4
  br label %561

561:                                              ; preds = %617, %560
  %562 = load i32, i32* %12, align 4
  %563 = load i32, i32* %11, align 4
  %564 = icmp slt i32 %562, %563
  br i1 %564, label %565, label %620

565:                                              ; preds = %561
  %566 = load i32, i32* @reg_reloaded_dead, align 4
  %567 = load i32, i32* %7, align 4
  %568 = load i32, i32* %12, align 4
  %569 = add nsw i32 %567, %568
  %570 = call i32 @CLEAR_HARD_REG_BIT(i32 %566, i32 %569)
  %571 = load i32, i32* %16, align 4
  %572 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %573 = icmp sge i32 %571, %572
  br i1 %573, label %577, label %574

574:                                              ; preds = %565
  %575 = load i32, i32* %18, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %579, label %577

577:                                              ; preds = %574, %565
  %578 = load i32, i32* %16, align 4
  br label %583

579:                                              ; preds = %574
  %580 = load i32, i32* %16, align 4
  %581 = load i32, i32* %12, align 4
  %582 = add nsw i32 %580, %581
  br label %583

583:                                              ; preds = %579, %577
  %584 = phi i32 [ %578, %577 ], [ %582, %579 ]
  %585 = load i32*, i32** @reg_reloaded_contents, align 8
  %586 = load i32, i32* %7, align 4
  %587 = load i32, i32* %12, align 4
  %588 = add nsw i32 %586, %587
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %585, i64 %589
  store i32 %584, i32* %590, align 4
  %591 = load i8*, i8** %3, align 8
  %592 = load i8**, i8*** @reg_reloaded_insn, align 8
  %593 = load i32, i32* %7, align 4
  %594 = load i32, i32* %12, align 4
  %595 = add nsw i32 %593, %594
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i8*, i8** %592, i64 %596
  store i8* %591, i8** %597, align 8
  %598 = load i32, i32* @reg_reloaded_valid, align 4
  %599 = load i32, i32* %7, align 4
  %600 = load i32, i32* %12, align 4
  %601 = add nsw i32 %599, %600
  %602 = call i32 @SET_HARD_REG_BIT(i32 %598, i32 %601)
  %603 = load i32, i32* %7, align 4
  %604 = load i32, i32* %12, align 4
  %605 = add nsw i32 %603, %604
  %606 = load i8*, i8** %15, align 8
  %607 = call i64 @GET_MODE(i8* %606)
  %608 = call i64 @HARD_REGNO_CALL_PART_CLOBBERED(i32 %605, i64 %607)
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %616

610:                                              ; preds = %583
  %611 = load i32, i32* @reg_reloaded_call_part_clobbered, align 4
  %612 = load i32, i32* %7, align 4
  %613 = load i32, i32* %12, align 4
  %614 = add nsw i32 %612, %613
  %615 = call i32 @SET_HARD_REG_BIT(i32 %611, i32 %614)
  br label %616

616:                                              ; preds = %610, %583
  br label %617

617:                                              ; preds = %616
  %618 = load i32, i32* %12, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %12, align 4
  br label %561

620:                                              ; preds = %561
  br label %934

621:                                              ; preds = %406, %388
  %622 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %623 = load i32, i32* %6, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %622, i64 %624
  %626 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %625, i32 0, i32 3
  %627 = load i8*, i8** %626, align 8
  %628 = icmp eq i8* %627, null
  br i1 %628, label %629, label %933

629:                                              ; preds = %621
  %630 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %631 = load i32, i32* %6, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %630, i64 %632
  %634 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %633, i32 0, i32 4
  %635 = load i64, i64* %634, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %933

637:                                              ; preds = %629
  %638 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %639 = load i32, i32* %6, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %638, i64 %640
  %642 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %641, i32 0, i32 4
  %643 = load i64, i64* %642, align 8
  %644 = inttoptr i64 %643 to i8*
  %645 = call i64 @REG_P(i8* %644)
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %669

647:                                              ; preds = %637
  %648 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %649 = load i32, i32* %6, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %648, i64 %650
  %652 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %651, i32 0, i32 4
  %653 = load i64, i64* %652, align 8
  %654 = inttoptr i64 %653 to i8*
  %655 = call i32 @REGNO(i8* %654)
  %656 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %657 = icmp sge i32 %655, %656
  br i1 %657, label %658, label %669

658:                                              ; preds = %647
  %659 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %660 = load i32, i32* %6, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %659, i64 %661
  %663 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %662, i32 0, i32 4
  %664 = load i64, i64* %663, align 8
  %665 = inttoptr i64 %664 to i8*
  %666 = call i32 @REGNO(i8* %665)
  %667 = call i32 @REGNO_REG_SET_P(i32* @reg_has_output_reload, i32 %666)
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %690

669:                                              ; preds = %658, %647, %637
  %670 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %671 = load i32, i32* %6, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %670, i64 %672
  %674 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %673, i32 0, i32 1
  %675 = load i64, i64* %674, align 8
  %676 = inttoptr i64 %675 to i8*
  %677 = call i64 @REG_P(i8* %676)
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %679, label %933

679:                                              ; preds = %669
  %680 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %681 = load i32, i32* %6, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %680, i64 %682
  %684 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %683, i32 0, i32 1
  %685 = load i64, i64* %684, align 8
  %686 = inttoptr i64 %685 to i8*
  %687 = call i32 @REGNO(i8* %686)
  %688 = call i32 @REGNO_REG_SET_P(i32* @reg_has_output_reload, i32 %687)
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %933, label %690

690:                                              ; preds = %679, %658
  %691 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %692 = load i32, i32* %6, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %691, i64 %693
  %695 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %694, i32 0, i32 0
  %696 = load i8*, i8** %695, align 8
  %697 = load i8*, i8** %3, align 8
  %698 = call i32 @PATTERN(i8* %697)
  %699 = call i32 @reg_set_p(i8* %696, i32 %698)
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %933, label %701

701:                                              ; preds = %690
  %702 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %703 = load i32, i32* %6, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %702, i64 %704
  %706 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %705, i32 0, i32 4
  %707 = load i64, i64* %706, align 8
  %708 = inttoptr i64 %707 to i8*
  %709 = call i64 @REG_P(i8* %708)
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %730

711:                                              ; preds = %701
  %712 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %713 = load i32, i32* %6, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %712, i64 %714
  %716 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %715, i32 0, i32 4
  %717 = load i64, i64* %716, align 8
  %718 = inttoptr i64 %717 to i8*
  %719 = call i32 @REGNO(i8* %718)
  %720 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %721 = icmp sge i32 %719, %720
  br i1 %721, label %722, label %730

722:                                              ; preds = %711
  %723 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %724 = load i32, i32* %6, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %723, i64 %725
  %727 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %726, i32 0, i32 4
  %728 = load i64, i64* %727, align 8
  %729 = inttoptr i64 %728 to i8*
  store i8* %729, i8** %21, align 8
  br label %757

730:                                              ; preds = %711, %701
  %731 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %732 = load i32, i32* %6, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %731, i64 %733
  %735 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %734, i32 0, i32 1
  %736 = load i64, i64* %735, align 8
  %737 = inttoptr i64 %736 to i8*
  %738 = call i64 @REG_P(i8* %737)
  %739 = icmp ne i64 %738, 0
  br i1 %739, label %740, label %748

740:                                              ; preds = %730
  %741 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %742 = load i32, i32* %6, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %741, i64 %743
  %745 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %744, i32 0, i32 1
  %746 = load i64, i64* %745, align 8
  %747 = inttoptr i64 %746 to i8*
  store i8* %747, i8** %21, align 8
  br label %756

748:                                              ; preds = %730
  %749 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %750 = load i32, i32* %6, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %749, i64 %751
  %753 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %752, i32 0, i32 1
  %754 = load i64, i64* %753, align 8
  %755 = call i8* @XEXP(i64 %754, i32 0)
  store i8* %755, i8** %21, align 8
  br label %756

756:                                              ; preds = %748, %740
  br label %757

757:                                              ; preds = %756, %722
  %758 = load i8*, i8** %21, align 8
  %759 = call i32 @REGNO(i8* %758)
  store i32 %759, i32* %19, align 4
  %760 = load i32, i32* %19, align 4
  %761 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %762 = icmp sge i32 %760, %761
  br i1 %762, label %763, label %764

763:                                              ; preds = %757
  br label %779

764:                                              ; preds = %757
  %765 = load i32**, i32*** @hard_regno_nregs, align 8
  %766 = load i32, i32* %19, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i32*, i32** %765, i64 %767
  %769 = load i32*, i32** %768, align 8
  %770 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %771 = load i32, i32* %6, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %770, i64 %772
  %774 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %773, i32 0, i32 0
  %775 = load i8*, i8** %774, align 8
  %776 = call i64 @GET_MODE(i8* %775)
  %777 = getelementptr inbounds i32, i32* %769, i64 %776
  %778 = load i32, i32* %777, align 4
  br label %779

779:                                              ; preds = %764, %763
  %780 = phi i32 [ 1, %763 ], [ %778, %764 ]
  store i32 %780, i32* %20, align 4
  %781 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %782 = load i32, i32* %6, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %781, i64 %783
  %785 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %784, i32 0, i32 0
  %786 = load i8*, i8** %785, align 8
  %787 = load i8**, i8*** @reg_last_reload_reg, align 8
  %788 = load i32, i32* %19, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds i8*, i8** %787, i64 %789
  store i8* %786, i8** %790, align 8
  %791 = load i32, i32* %19, align 4
  %792 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %793 = icmp slt i32 %791, %792
  br i1 %793, label %794, label %803

794:                                              ; preds = %779
  %795 = load i32, i32* %11, align 4
  %796 = load i32, i32* %20, align 4
  %797 = icmp eq i32 %795, %796
  br i1 %797, label %798, label %803

798:                                              ; preds = %794
  %799 = load i32, i32* %6, align 4
  %800 = load i32, i32* %19, align 4
  %801 = call i64 @inherit_piecemeal_p(i32 %799, i32 %800)
  %802 = icmp ne i64 %801, 0
  br label %803

803:                                              ; preds = %798, %794, %779
  %804 = phi i1 [ false, %794 ], [ false, %779 ], [ %802, %798 ]
  %805 = zext i1 %804 to i32
  store i32 %805, i32* %22, align 4
  %806 = load i32, i32* %19, align 4
  %807 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %808 = icmp slt i32 %806, %807
  br i1 %808, label %809, label %844

809:                                              ; preds = %803
  store i32 1, i32* %12, align 4
  br label %810

810:                                              ; preds = %840, %809
  %811 = load i32, i32* %12, align 4
  %812 = load i32, i32* %20, align 4
  %813 = icmp slt i32 %811, %812
  br i1 %813, label %814, label %843

814:                                              ; preds = %810
  %815 = load i32, i32* %22, align 4
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %831

817:                                              ; preds = %814
  %818 = load i8**, i8*** @regno_reg_rtx, align 8
  %819 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %820 = load i32, i32* %6, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %819, i64 %821
  %823 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %822, i32 0, i32 0
  %824 = load i8*, i8** %823, align 8
  %825 = call i32 @REGNO(i8* %824)
  %826 = load i32, i32* %12, align 4
  %827 = add nsw i32 %825, %826
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds i8*, i8** %818, i64 %828
  %830 = load i8*, i8** %829, align 8
  br label %832

831:                                              ; preds = %814
  br label %832

832:                                              ; preds = %831, %817
  %833 = phi i8* [ %830, %817 ], [ null, %831 ]
  %834 = load i8**, i8*** @reg_last_reload_reg, align 8
  %835 = load i32, i32* %19, align 4
  %836 = load i32, i32* %12, align 4
  %837 = add nsw i32 %835, %836
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds i8*, i8** %834, i64 %838
  store i8* %833, i8** %839, align 8
  br label %840

840:                                              ; preds = %832
  %841 = load i32, i32* %12, align 4
  %842 = add nsw i32 %841, 1
  store i32 %842, i32* %12, align 4
  br label %810

843:                                              ; preds = %810
  br label %844

844:                                              ; preds = %843, %803
  %845 = load i64*, i64** @reload_inherited, align 8
  %846 = load i32, i32* %6, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds i64, i64* %845, i64 %847
  %849 = load i64, i64* %848, align 8
  %850 = icmp ne i64 %849, 0
  br i1 %850, label %851, label %867

851:                                              ; preds = %844
  %852 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %853 = load i32, i32* %6, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %852, i64 %854
  %856 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %855, i32 0, i32 2
  %857 = load i64, i64* %856, align 8
  %858 = icmp ne i64 %857, 0
  br i1 %858, label %859, label %872

859:                                              ; preds = %851
  %860 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %861 = load i32, i32* %6, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %860, i64 %862
  %864 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %863, i32 0, i32 3
  %865 = load i8*, i8** %864, align 8
  %866 = icmp ne i8* %865, null
  br i1 %866, label %872, label %867

867:                                              ; preds = %859, %844
  %868 = load i8**, i8*** @spill_reg_store, align 8
  %869 = load i32, i32* %7, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds i8*, i8** %868, i64 %870
  store i8* null, i8** %871, align 8
  br label %872

872:                                              ; preds = %867, %859, %851
  store i32 0, i32* %12, align 4
  br label %873

873:                                              ; preds = %929, %872
  %874 = load i32, i32* %12, align 4
  %875 = load i32, i32* %11, align 4
  %876 = icmp slt i32 %874, %875
  br i1 %876, label %877, label %932

877:                                              ; preds = %873
  %878 = load i32, i32* @reg_reloaded_dead, align 4
  %879 = load i32, i32* %7, align 4
  %880 = load i32, i32* %12, align 4
  %881 = add nsw i32 %879, %880
  %882 = call i32 @CLEAR_HARD_REG_BIT(i32 %878, i32 %881)
  %883 = load i32, i32* %19, align 4
  %884 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %885 = icmp sge i32 %883, %884
  br i1 %885, label %889, label %886

886:                                              ; preds = %877
  %887 = load i32, i32* %22, align 4
  %888 = icmp ne i32 %887, 0
  br i1 %888, label %891, label %889

889:                                              ; preds = %886, %877
  %890 = load i32, i32* %19, align 4
  br label %895

891:                                              ; preds = %886
  %892 = load i32, i32* %19, align 4
  %893 = load i32, i32* %12, align 4
  %894 = add nsw i32 %892, %893
  br label %895

895:                                              ; preds = %891, %889
  %896 = phi i32 [ %890, %889 ], [ %894, %891 ]
  %897 = load i32*, i32** @reg_reloaded_contents, align 8
  %898 = load i32, i32* %7, align 4
  %899 = load i32, i32* %12, align 4
  %900 = add nsw i32 %898, %899
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i32, i32* %897, i64 %901
  store i32 %896, i32* %902, align 4
  %903 = load i8*, i8** %3, align 8
  %904 = load i8**, i8*** @reg_reloaded_insn, align 8
  %905 = load i32, i32* %7, align 4
  %906 = load i32, i32* %12, align 4
  %907 = add nsw i32 %905, %906
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds i8*, i8** %904, i64 %908
  store i8* %903, i8** %909, align 8
  %910 = load i32, i32* @reg_reloaded_valid, align 4
  %911 = load i32, i32* %7, align 4
  %912 = load i32, i32* %12, align 4
  %913 = add nsw i32 %911, %912
  %914 = call i32 @SET_HARD_REG_BIT(i32 %910, i32 %913)
  %915 = load i32, i32* %7, align 4
  %916 = load i32, i32* %12, align 4
  %917 = add nsw i32 %915, %916
  %918 = load i8*, i8** %21, align 8
  %919 = call i64 @GET_MODE(i8* %918)
  %920 = call i64 @HARD_REGNO_CALL_PART_CLOBBERED(i32 %917, i64 %919)
  %921 = icmp ne i64 %920, 0
  br i1 %921, label %922, label %928

922:                                              ; preds = %895
  %923 = load i32, i32* @reg_reloaded_call_part_clobbered, align 4
  %924 = load i32, i32* %7, align 4
  %925 = load i32, i32* %12, align 4
  %926 = add nsw i32 %924, %925
  %927 = call i32 @SET_HARD_REG_BIT(i32 %923, i32 %926)
  br label %928

928:                                              ; preds = %922, %895
  br label %929

929:                                              ; preds = %928
  %930 = load i32, i32* %12, align 4
  %931 = add nsw i32 %930, 1
  store i32 %931, i32* %12, align 4
  br label %873

932:                                              ; preds = %873
  br label %933

933:                                              ; preds = %932, %690, %679, %669, %629, %621
  br label %934

934:                                              ; preds = %933, %620
  br label %973

935:                                              ; preds = %366
  %936 = load i32, i32* %13, align 4
  %937 = icmp ne i32 %936, 0
  br i1 %937, label %938, label %972

938:                                              ; preds = %935
  store i32 0, i32* %12, align 4
  br label %939

939:                                              ; preds = %968, %938
  %940 = load i32, i32* %12, align 4
  %941 = load i32, i32* %11, align 4
  %942 = icmp slt i32 %940, %941
  br i1 %942, label %943, label %971

943:                                              ; preds = %939
  %944 = load i32, i32* %7, align 4
  %945 = load i32, i32* %12, align 4
  %946 = add nsw i32 %944, %945
  %947 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %948 = load i32, i32* %6, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %947, i64 %949
  %951 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %950, i32 0, i32 7
  %952 = load i32, i32* %951, align 4
  %953 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %954 = load i32, i32* %6, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %953, i64 %955
  %957 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %956, i32 0, i32 6
  %958 = load i32, i32* %957, align 8
  %959 = call i64 @reload_reg_reaches_end_p(i32 %946, i32 %952, i32 %958)
  %960 = icmp ne i64 %959, 0
  br i1 %960, label %961, label %967

961:                                              ; preds = %943
  %962 = load i32, i32* @reg_reloaded_valid, align 4
  %963 = load i32, i32* %7, align 4
  %964 = load i32, i32* %12, align 4
  %965 = add nsw i32 %963, %964
  %966 = call i32 @CLEAR_HARD_REG_BIT(i32 %962, i32 %965)
  br label %967

967:                                              ; preds = %961, %943
  br label %968

968:                                              ; preds = %967
  %969 = load i32, i32* %12, align 4
  %970 = add nsw i32 %969, 1
  store i32 %970, i32* %12, align 4
  br label %939

971:                                              ; preds = %939
  br label %972

972:                                              ; preds = %971, %935
  br label %973

973:                                              ; preds = %972, %934
  br label %974

974:                                              ; preds = %973, %315, %312
  %975 = load i32, i32* %7, align 4
  %976 = icmp slt i32 %975, 0
  br i1 %976, label %977, label %1294

977:                                              ; preds = %974
  %978 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %979 = load i32, i32* %6, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %978, i64 %980
  %982 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %981, i32 0, i32 2
  %983 = load i64, i64* %982, align 8
  %984 = icmp ne i64 %983, 0
  br i1 %984, label %985, label %1014

985:                                              ; preds = %977
  %986 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %987 = load i32, i32* %6, align 4
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %986, i64 %988
  %990 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %989, i32 0, i32 2
  %991 = load i64, i64* %990, align 8
  %992 = inttoptr i64 %991 to i8*
  %993 = call i64 @REG_P(i8* %992)
  %994 = icmp ne i64 %993, 0
  br i1 %994, label %1039, label %995

995:                                              ; preds = %985
  %996 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %997 = load i32, i32* %6, align 4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %996, i64 %998
  %1000 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %999, i32 0, i32 2
  %1001 = load i64, i64* %1000, align 8
  %1002 = inttoptr i64 %1001 to i8*
  %1003 = call i64 @MEM_P(i8* %1002)
  %1004 = icmp ne i64 %1003, 0
  br i1 %1004, label %1005, label %1014

1005:                                             ; preds = %995
  %1006 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1007 = load i32, i32* %6, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1006, i64 %1008
  %1010 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1009, i32 0, i32 3
  %1011 = load i8*, i8** %1010, align 8
  %1012 = call i64 @REG_P(i8* %1011)
  %1013 = icmp ne i64 %1012, 0
  br i1 %1013, label %1039, label %1014

1014:                                             ; preds = %1005, %995, %977
  %1015 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1016 = load i32, i32* %6, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1015, i64 %1017
  %1019 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1018, i32 0, i32 2
  %1020 = load i64, i64* %1019, align 8
  %1021 = icmp eq i64 %1020, 0
  br i1 %1021, label %1022, label %1294

1022:                                             ; preds = %1014
  %1023 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1024 = load i32, i32* %6, align 4
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1023, i64 %1025
  %1027 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1026, i32 0, i32 3
  %1028 = load i8*, i8** %1027, align 8
  %1029 = icmp ne i8* %1028, null
  br i1 %1029, label %1030, label %1294

1030:                                             ; preds = %1022
  %1031 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1032 = load i32, i32* %6, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1031, i64 %1033
  %1035 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1034, i32 0, i32 3
  %1036 = load i8*, i8** %1035, align 8
  %1037 = call i64 @REG_P(i8* %1036)
  %1038 = icmp ne i64 %1037, 0
  br i1 %1038, label %1039, label %1294

1039:                                             ; preds = %1030, %1005, %985
  %1040 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1041 = load i32, i32* %6, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1040, i64 %1042
  %1044 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1043, i32 0, i32 2
  %1045 = load i64, i64* %1044, align 8
  %1046 = icmp ne i64 %1045, 0
  br i1 %1046, label %1047, label %1065

1047:                                             ; preds = %1039
  %1048 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1049 = load i32, i32* %6, align 4
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1048, i64 %1050
  %1052 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1051, i32 0, i32 2
  %1053 = load i64, i64* %1052, align 8
  %1054 = inttoptr i64 %1053 to i8*
  %1055 = call i64 @REG_P(i8* %1054)
  %1056 = icmp ne i64 %1055, 0
  br i1 %1056, label %1057, label %1065

1057:                                             ; preds = %1047
  %1058 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1059 = load i32, i32* %6, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1058, i64 %1060
  %1062 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1061, i32 0, i32 2
  %1063 = load i64, i64* %1062, align 8
  %1064 = inttoptr i64 %1063 to i8*
  br label %1072

1065:                                             ; preds = %1047, %1039
  %1066 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1067 = load i32, i32* %6, align 4
  %1068 = sext i32 %1067 to i64
  %1069 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1066, i64 %1068
  %1070 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1069, i32 0, i32 3
  %1071 = load i8*, i8** %1070, align 8
  br label %1072

1072:                                             ; preds = %1065, %1057
  %1073 = phi i8* [ %1064, %1057 ], [ %1071, %1065 ]
  store i8* %1073, i8** %23, align 8
  %1074 = load i8*, i8** %23, align 8
  %1075 = call i32 @REGNO(i8* %1074)
  store i32 %1075, i32* %24, align 4
  %1076 = load i32, i32* %24, align 4
  %1077 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %1078 = icmp sge i32 %1076, %1077
  br i1 %1078, label %1079, label %1271

1079:                                             ; preds = %1072
  %1080 = load i8*, i8** @NULL_RTX, align 8
  store i8* %1080, i8** %26, align 8
  %1081 = load i8**, i8*** @reg_last_reload_reg, align 8
  %1082 = load i32, i32* %24, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds i8*, i8** %1081, i64 %1083
  store i8* null, i8** %1084, align 8
  %1085 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1086 = load i32, i32* %6, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1085, i64 %1087
  %1089 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1088, i32 0, i32 0
  %1090 = load i8*, i8** %1089, align 8
  store i8* %1090, i8** %25, align 8
  %1091 = load i8*, i8** %25, align 8
  %1092 = icmp ne i8* %1091, null
  br i1 %1092, label %1139, label %1093

1093:                                             ; preds = %1079
  %1094 = load i8*, i8** %3, align 8
  %1095 = call i8* @single_set(i8* %1094)
  store i8* %1095, i8** %27, align 8
  %1096 = load i8*, i8** %27, align 8
  %1097 = icmp ne i8* %1096, null
  br i1 %1097, label %1098, label %1138

1098:                                             ; preds = %1093
  %1099 = load i8*, i8** %27, align 8
  %1100 = call i64 @SET_DEST(i8* %1099)
  %1101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1102 = load i32, i32* %6, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1101, i64 %1103
  %1105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1104, i32 0, i32 2
  %1106 = load i64, i64* %1105, align 8
  %1107 = icmp eq i64 %1100, %1106
  br i1 %1107, label %1108, label %1138

1108:                                             ; preds = %1098
  %1109 = load i8*, i8** %27, align 8
  %1110 = call i8* @SET_SRC(i8* %1109)
  store i8* %1110, i8** %25, align 8
  %1111 = load i8*, i8** %3, align 8
  store i8* %1111, i8** %26, align 8
  store i32 0, i32* %28, align 4
  br label %1112

1112:                                             ; preds = %1134, %1108
  %1113 = load i32, i32* %28, align 4
  %1114 = load i32, i32* @n_reloads, align 4
  %1115 = icmp slt i32 %1113, %1114
  br i1 %1115, label %1116, label %1137

1116:                                             ; preds = %1112
  %1117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1118 = load i32, i32* %28, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1117, i64 %1119
  %1121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1120, i32 0, i32 4
  %1122 = load i64, i64* %1121, align 8
  %1123 = inttoptr i64 %1122 to i8*
  %1124 = load i8*, i8** %25, align 8
  %1125 = icmp eq i8* %1123, %1124
  br i1 %1125, label %1126, label %1133

1126:                                             ; preds = %1116
  %1127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1128 = load i32, i32* %28, align 4
  %1129 = sext i32 %1128 to i64
  %1130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1127, i64 %1129
  %1131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1130, i32 0, i32 0
  %1132 = load i8*, i8** %1131, align 8
  store i8* %1132, i8** %25, align 8
  br label %1137

1133:                                             ; preds = %1116
  br label %1134

1134:                                             ; preds = %1133
  %1135 = load i32, i32* %28, align 4
  %1136 = add nsw i32 %1135, 1
  store i32 %1136, i32* %28, align 4
  br label %1112

1137:                                             ; preds = %1126, %1112
  br label %1138

1138:                                             ; preds = %1137, %1098, %1093
  br label %1146

1139:                                             ; preds = %1079
  %1140 = load i8**, i8*** @new_spill_reg_store, align 8
  %1141 = load i8*, i8** %25, align 8
  %1142 = call i32 @REGNO(i8* %1141)
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds i8*, i8** %1140, i64 %1143
  %1145 = load i8*, i8** %1144, align 8
  store i8* %1145, i8** %26, align 8
  br label %1146

1146:                                             ; preds = %1139, %1138
  %1147 = load i8*, i8** %25, align 8
  %1148 = icmp ne i8* %1147, null
  br i1 %1148, label %1149, label %1270

1149:                                             ; preds = %1146
  %1150 = load i8*, i8** %25, align 8
  %1151 = call i64 @REG_P(i8* %1150)
  %1152 = icmp ne i64 %1151, 0
  br i1 %1152, label %1153, label %1270

1153:                                             ; preds = %1149
  %1154 = load i8*, i8** %25, align 8
  %1155 = call i32 @REGNO(i8* %1154)
  %1156 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %1157 = icmp slt i32 %1155, %1156
  br i1 %1157, label %1158, label %1270

1158:                                             ; preds = %1153
  %1159 = load i8*, i8** %25, align 8
  %1160 = call i32 @REGNO(i8* %1159)
  store i32 %1160, i32* %29, align 4
  %1161 = load i32**, i32*** @hard_regno_nregs, align 8
  %1162 = load i32, i32* %29, align 4
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds i32*, i32** %1161, i64 %1163
  %1165 = load i32*, i32** %1164, align 8
  %1166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %1167 = load i32, i32* %6, align 4
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1166, i64 %1168
  %1170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1169, i32 0, i32 5
  %1171 = load i64, i64* %1170, align 8
  %1172 = getelementptr inbounds i32, i32* %1165, i64 %1171
  %1173 = load i32, i32* %1172, align 4
  store i32 %1173, i32* %30, align 4
  %1174 = load i8*, i8** %3, align 8
  %1175 = load i32, i32* @REG_DEAD, align 4
  %1176 = load i32, i32* %29, align 4
  %1177 = call i8* @find_regno_note(i8* %1174, i32 %1175, i32 %1176)
  store i8* %1177, i8** %31, align 8
  %1178 = load i8*, i8** %31, align 8
  %1179 = icmp ne i8* %1178, null
  br i1 %1179, label %1188, label %1180

1180:                                             ; preds = %1158
  %1181 = load i8*, i8** %26, align 8
  %1182 = icmp ne i8* %1181, null
  br i1 %1182, label %1183, label %1188

1183:                                             ; preds = %1180
  %1184 = load i8*, i8** %26, align 8
  %1185 = load i32, i32* @REG_DEAD, align 4
  %1186 = load i32, i32* %29, align 4
  %1187 = call i8* @find_regno_note(i8* %1184, i32 %1185, i32 %1186)
  store i8* %1187, i8** %31, align 8
  br label %1188

1188:                                             ; preds = %1183, %1180, %1158
  br label %1189

1189:                                             ; preds = %1261, %1188
  %1190 = load i32, i32* %30, align 4
  %1191 = add nsw i32 %1190, -1
  store i32 %1191, i32* %30, align 4
  %1192 = icmp sgt i32 %1190, 0
  br i1 %1192, label %1193, label %1262

1193:                                             ; preds = %1189
  %1194 = load i8*, i8** %26, align 8
  %1195 = load i8**, i8*** @spill_reg_store, align 8
  %1196 = load i32, i32* %29, align 4
  %1197 = load i32, i32* %30, align 4
  %1198 = add nsw i32 %1196, %1197
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds i8*, i8** %1195, i64 %1199
  store i8* %1194, i8** %1200, align 8
  %1201 = load i8*, i8** %23, align 8
  %1202 = load i8**, i8*** @spill_reg_stored_to, align 8
  %1203 = load i32, i32* %29, align 4
  %1204 = load i32, i32* %30, align 4
  %1205 = add nsw i32 %1203, %1204
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds i8*, i8** %1202, i64 %1206
  store i8* %1201, i8** %1207, align 8
  %1208 = load i32, i32* %24, align 4
  %1209 = load i32*, i32** @reg_reloaded_contents, align 8
  %1210 = load i32, i32* %29, align 4
  %1211 = load i32, i32* %30, align 4
  %1212 = add nsw i32 %1210, %1211
  %1213 = sext i32 %1212 to i64
  %1214 = getelementptr inbounds i32, i32* %1209, i64 %1213
  store i32 %1208, i32* %1214, align 4
  %1215 = load i8*, i8** %26, align 8
  %1216 = load i8**, i8*** @reg_reloaded_insn, align 8
  %1217 = load i32, i32* %29, align 4
  %1218 = load i32, i32* %30, align 4
  %1219 = add nsw i32 %1217, %1218
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds i8*, i8** %1216, i64 %1220
  store i8* %1215, i8** %1221, align 8
  %1222 = load i32, i32* @reg_reloaded_dead, align 4
  %1223 = load i32, i32* %29, align 4
  %1224 = load i32, i32* %30, align 4
  %1225 = add nsw i32 %1223, %1224
  %1226 = call i32 @CLEAR_HARD_REG_BIT(i32 %1222, i32 %1225)
  %1227 = load i32, i32* @reg_reloaded_valid, align 4
  %1228 = load i32, i32* %29, align 4
  %1229 = load i32, i32* %30, align 4
  %1230 = add nsw i32 %1228, %1229
  %1231 = call i32 @SET_HARD_REG_BIT(i32 %1227, i32 %1230)
  %1232 = load i32, i32* %29, align 4
  %1233 = load i32, i32* %30, align 4
  %1234 = add nsw i32 %1232, %1233
  %1235 = load i8*, i8** %25, align 8
  %1236 = call i64 @GET_MODE(i8* %1235)
  %1237 = call i64 @HARD_REGNO_CALL_PART_CLOBBERED(i32 %1234, i64 %1236)
  %1238 = icmp ne i64 %1237, 0
  br i1 %1238, label %1239, label %1245

1239:                                             ; preds = %1193
  %1240 = load i32, i32* @reg_reloaded_call_part_clobbered, align 4
  %1241 = load i32, i32* %29, align 4
  %1242 = load i32, i32* %30, align 4
  %1243 = add nsw i32 %1241, %1242
  %1244 = call i32 @SET_HARD_REG_BIT(i32 %1240, i32 %1243)
  br label %1245

1245:                                             ; preds = %1239, %1193
  %1246 = load i32, i32* @reg_is_output_reload, align 4
  %1247 = load i32, i32* %29, align 4
  %1248 = load i32, i32* %30, align 4
  %1249 = add nsw i32 %1247, %1248
  %1250 = call i32 @SET_HARD_REG_BIT(i32 %1246, i32 %1249)
  %1251 = load i8*, i8** %31, align 8
  %1252 = icmp ne i8* %1251, null
  br i1 %1252, label %1253, label %1257

1253:                                             ; preds = %1245
  %1254 = load i32, i32* @reg_reloaded_died, align 4
  %1255 = load i32, i32* %29, align 4
  %1256 = call i32 @SET_HARD_REG_BIT(i32 %1254, i32 %1255)
  br label %1261

1257:                                             ; preds = %1245
  %1258 = load i32, i32* @reg_reloaded_died, align 4
  %1259 = load i32, i32* %29, align 4
  %1260 = call i32 @CLEAR_HARD_REG_BIT(i32 %1258, i32 %1259)
  br label %1261

1261:                                             ; preds = %1257, %1253
  br label %1189

1262:                                             ; preds = %1189
  %1263 = load i8*, i8** %25, align 8
  %1264 = load i8**, i8*** @reg_last_reload_reg, align 8
  %1265 = load i32, i32* %24, align 4
  %1266 = sext i32 %1265 to i64
  %1267 = getelementptr inbounds i8*, i8** %1264, i64 %1266
  store i8* %1263, i8** %1267, align 8
  %1268 = load i32, i32* %24, align 4
  %1269 = call i32 @SET_REGNO_REG_SET(i32* @reg_has_output_reload, i32 %1268)
  br label %1270

1270:                                             ; preds = %1262, %1153, %1149, %1146
  br label %1293

1271:                                             ; preds = %1072
  %1272 = load i32**, i32*** @hard_regno_nregs, align 8
  %1273 = load i32, i32* %24, align 4
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds i32*, i32** %1272, i64 %1274
  %1276 = load i32*, i32** %1275, align 8
  %1277 = load i8*, i8** %23, align 8
  %1278 = call i64 @GET_MODE(i8* %1277)
  %1279 = getelementptr inbounds i32, i32* %1276, i64 %1278
  %1280 = load i32, i32* %1279, align 4
  store i32 %1280, i32* %32, align 4
  br label %1281

1281:                                             ; preds = %1285, %1271
  %1282 = load i32, i32* %32, align 4
  %1283 = add nsw i32 %1282, -1
  store i32 %1283, i32* %32, align 4
  %1284 = icmp sgt i32 %1282, 0
  br i1 %1284, label %1285, label %1292

1285:                                             ; preds = %1281
  %1286 = load i8**, i8*** @reg_last_reload_reg, align 8
  %1287 = load i32, i32* %24, align 4
  %1288 = load i32, i32* %32, align 4
  %1289 = add nsw i32 %1287, %1288
  %1290 = sext i32 %1289 to i64
  %1291 = getelementptr inbounds i8*, i8** %1286, i64 %1290
  store i8* null, i8** %1291, align 8
  br label %1281

1292:                                             ; preds = %1281
  br label %1293

1293:                                             ; preds = %1292, %1270
  br label %1294

1294:                                             ; preds = %1293, %1030, %1022, %1014, %974
  br label %1295

1295:                                             ; preds = %1294
  %1296 = load i32, i32* %4, align 4
  %1297 = add nsw i32 %1296, 1
  store i32 %1297, i32* %4, align 4
  br label %216

1298:                                             ; preds = %216
  %1299 = load i32, i32* @reg_reloaded_dead, align 4
  %1300 = load i32, i32* @reg_reloaded_died, align 4
  %1301 = call i32 @IOR_HARD_REG_SET(i32 %1299, i32 %1300)
  ret void
}

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32) #1

declare dso_local i32 @INSN_UID(i8*) #1

declare dso_local i32 @debug_reload_to_stream(i64) #1

declare dso_local i32 @REGNO(i8*) #1

declare dso_local i32 @do_input_reload(%struct.insn_chain*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @do_output_reload(%struct.insn_chain*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @emit_insn_before(i64, i8*) #1

declare dso_local i8* @emit_insn_after(i64, i8*) #1

declare dso_local i64 @GET_CODE(i8*) #1

declare dso_local i8* @SUBREG_REG(i8*) #1

declare dso_local i64 @REG_P(i8*) #1

declare dso_local i32 @REGNO_REG_SET_P(i32*, i32) #1

declare dso_local i64 @GET_MODE(i8*) #1

declare dso_local i64 @reload_reg_reaches_end_p(i32, i32, i32) #1

declare dso_local i32 @CLEAR_HARD_REG_BIT(i32, i32) #1

declare dso_local i8* @XEXP(i64, i32) #1

declare dso_local i64 @inherit_piecemeal_p(i32, i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @HARD_REGNO_CALL_PART_CLOBBERED(i32, i64) #1

declare dso_local i32 @reg_set_p(i8*, i32) #1

declare dso_local i32 @PATTERN(i8*) #1

declare dso_local i64 @MEM_P(i8*) #1

declare dso_local i8* @single_set(i8*) #1

declare dso_local i64 @SET_DEST(i8*) #1

declare dso_local i8* @SET_SRC(i8*) #1

declare dso_local i8* @find_regno_note(i8*, i32, i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32*, i32) #1

declare dso_local i32 @IOR_HARD_REG_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
