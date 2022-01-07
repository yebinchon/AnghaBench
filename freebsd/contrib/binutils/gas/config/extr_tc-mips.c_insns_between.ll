; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_insns_between.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_insns_between.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mips_cl_insn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@hilo_interlocks = common dso_local global i32 0, align 4
@INSN_READ_LO = common dso_local global i64 0, align 8
@INSN_WRITE_LO = common dso_local global i64 0, align 8
@INSN_READ_HI = common dso_local global i64 0, align 8
@INSN_WRITE_HI = common dso_local global i64 0, align 8
@mips_7000_hilo_fix = common dso_local global i64 0, align 8
@RD = common dso_local global i32 0, align 4
@MIPS_GR_REG = common dso_local global i32 0, align 4
@mips_fix_vr4120 = common dso_local global i64 0, align 8
@NUM_FIX_VR4120_CLASSES = common dso_local global i32 0, align 4
@vr4120_conflicts = common dso_local global i32* null, align 8
@mips_opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@gpr_interlocks = common dso_local global i32 0, align 4
@INSN_LOAD_MEMORY_DELAY = common dso_local global i64 0, align 8
@cop_interlocks = common dso_local global i32 0, align 4
@INSN_LOAD_COPROC_DELAY = common dso_local global i64 0, align 8
@INSN_WRITE_GPR_T = common dso_local global i64 0, align 8
@RT = common dso_local global i32 0, align 4
@INSN_COPROC_MOVE_DELAY = common dso_local global i64 0, align 8
@cop_mem_interlocks = common dso_local global i32 0, align 4
@INSN_COPROC_MEMORY_DELAY = common dso_local global i64 0, align 8
@INSN_WRITE_FPR_T = common dso_local global i64 0, align 8
@FT = common dso_local global i32 0, align 4
@MIPS_FP_REG = common dso_local global i32 0, align 4
@INSN_WRITE_FPR_S = common dso_local global i64 0, align 8
@FS = common dso_local global i32 0, align 4
@INSN_WRITE_COND_CODE = common dso_local global i64 0, align 8
@INSN_READ_COND_CODE = common dso_local global i64 0, align 8
@INSN_COP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_cl_insn*, %struct.mips_cl_insn*)* @insns_between to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insns_between(%struct.mips_cl_insn* %0, %struct.mips_cl_insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mips_cl_insn*, align 8
  %5 = alloca %struct.mips_cl_insn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %4, align 8
  store %struct.mips_cl_insn* %1, %struct.mips_cl_insn** %5, align 8
  %10 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %11 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %16 = icmp ne %struct.mips_cl_insn* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %19 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i64 [ %22, %17 ], [ 4294967295, %23 ]
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* @hilo_interlocks, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @INSN_READ_LO, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @INSN_WRITE_LO, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 2, i32* %3, align 4
  br label %247

39:                                               ; preds = %33, %28
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @INSN_READ_HI, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @INSN_WRITE_HI, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 2, i32* %3, align 4
  br label %247

50:                                               ; preds = %44, %39
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i64, i64* @mips_7000_hilo_fix, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @MF_HILO_INSN(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %60 = icmp eq %struct.mips_cl_insn* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %63 = load i32, i32* @RD, align 4
  %64 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %65 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = call i32 @EXTRACT_OPERAND(i32 %63, %struct.TYPE_3__* %66)
  %68 = load i32, i32* @MIPS_GR_REG, align 4
  %69 = call i32 (%struct.mips_cl_insn*, i32, i32, ...) bitcast (i32 (...)* @insn_uses_reg to i32 (%struct.mips_cl_insn*, i32, i32, ...)*)(%struct.mips_cl_insn* %62, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61, %58
  store i32 2, i32* %3, align 4
  br label %247

72:                                               ; preds = %61, %54, %51
  %73 = load i64, i64* @mips_fix_vr4120, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %72
  %76 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %77 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @classify_vr4120_insn(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @NUM_FIX_VR4120_CLASSES, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %75
  %86 = load i32*, i32** @vr4120_conflicts, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %85
  %93 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %94 = icmp eq %struct.mips_cl_insn* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 1, i32* %3, align 4
  br label %247

96:                                               ; preds = %92
  %97 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %98 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @classify_vr4120_insn(i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32*, i32** @vr4120_conflicts, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = shl i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %247

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %85, %75
  br label %115

115:                                              ; preds = %114, %72
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mips_opts, i32 0, i32 0), align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %246, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @gpr_interlocks, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @INSN_LOAD_MEMORY_DELAY, align 8
  %124 = and i64 %122, %123
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* @cop_interlocks, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %153, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* @INSN_LOAD_COPROC_DELAY, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %129, %121
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @INSN_WRITE_GPR_T, align 8
  %137 = and i64 %135, %136
  %138 = call i32 @know(i64 %137)
  %139 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %140 = icmp eq %struct.mips_cl_insn* %139, null
  br i1 %140, label %151, label %141

141:                                              ; preds = %134
  %142 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %143 = load i32, i32* @RT, align 4
  %144 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %145 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %144, i32 0, i32 0
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = call i32 @EXTRACT_OPERAND(i32 %143, %struct.TYPE_3__* %146)
  %148 = load i32, i32* @MIPS_GR_REG, align 4
  %149 = call i32 (%struct.mips_cl_insn*, i32, i32, ...) bitcast (i32 (...)* @insn_uses_reg to i32 (%struct.mips_cl_insn*, i32, i32, ...)*)(%struct.mips_cl_insn* %142, i32 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141, %134
  store i32 1, i32* %3, align 4
  br label %247

152:                                              ; preds = %141
  br label %245

153:                                              ; preds = %129, %126
  %154 = load i32, i32* @cop_interlocks, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @INSN_COPROC_MOVE_DELAY, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %156, %153
  %162 = load i32, i32* @cop_mem_interlocks, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %229, label %164

164:                                              ; preds = %161
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @INSN_COPROC_MEMORY_DELAY, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %229

169:                                              ; preds = %164, %156
  %170 = load i64, i64* %6, align 8
  %171 = load i64, i64* @INSN_WRITE_FPR_T, align 8
  %172 = and i64 %170, %171
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %169
  %175 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %176 = icmp eq %struct.mips_cl_insn* %175, null
  br i1 %176, label %187, label %177

177:                                              ; preds = %174
  %178 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %179 = load i32, i32* @FT, align 4
  %180 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %181 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %180, i32 0, i32 0
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = call i32 @EXTRACT_OPERAND(i32 %179, %struct.TYPE_3__* %182)
  %184 = load i32, i32* @MIPS_FP_REG, align 4
  %185 = call i32 (%struct.mips_cl_insn*, i32, i32, ...) bitcast (i32 (...)* @insn_uses_reg to i32 (%struct.mips_cl_insn*, i32, i32, ...)*)(%struct.mips_cl_insn* %178, i32 %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %177, %174
  store i32 1, i32* %3, align 4
  br label %247

188:                                              ; preds = %177
  br label %228

189:                                              ; preds = %169
  %190 = load i64, i64* %6, align 8
  %191 = load i64, i64* @INSN_WRITE_FPR_S, align 8
  %192 = and i64 %190, %191
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %189
  %195 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %196 = icmp eq %struct.mips_cl_insn* %195, null
  br i1 %196, label %207, label %197

197:                                              ; preds = %194
  %198 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %199 = load i32, i32* @FS, align 4
  %200 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %201 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %200, i32 0, i32 0
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = call i32 @EXTRACT_OPERAND(i32 %199, %struct.TYPE_3__* %202)
  %204 = load i32, i32* @MIPS_FP_REG, align 4
  %205 = call i32 (%struct.mips_cl_insn*, i32, i32, ...) bitcast (i32 (...)* @insn_uses_reg to i32 (%struct.mips_cl_insn*, i32, i32, ...)*)(%struct.mips_cl_insn* %198, i32 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %197, %194
  store i32 1, i32* %3, align 4
  br label %247

208:                                              ; preds = %197
  br label %227

209:                                              ; preds = %189
  %210 = load i64, i64* %6, align 8
  %211 = load i64, i64* @INSN_WRITE_COND_CODE, align 8
  %212 = and i64 %210, %211
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load i64, i64* %7, align 8
  %216 = load i64, i64* @INSN_READ_COND_CODE, align 8
  %217 = and i64 %215, %216
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 2, i32* %3, align 4
  br label %247

220:                                              ; preds = %214, %209
  %221 = load i64, i64* %7, align 8
  %222 = load i64, i64* @INSN_COP, align 8
  %223 = and i64 %221, %222
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 1, i32* %3, align 4
  br label %247

226:                                              ; preds = %220
  br label %227

227:                                              ; preds = %226, %208
  br label %228

228:                                              ; preds = %227, %188
  br label %244

229:                                              ; preds = %164, %161
  %230 = load i32, i32* @cop_interlocks, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %243, label %232

232:                                              ; preds = %229
  %233 = load i64, i64* %6, align 8
  %234 = load i64, i64* @INSN_WRITE_COND_CODE, align 8
  %235 = and i64 %233, %234
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* @INSN_READ_COND_CODE, align 8
  %240 = and i64 %238, %239
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  store i32 1, i32* %3, align 4
  br label %247

243:                                              ; preds = %237, %232, %229
  br label %244

244:                                              ; preds = %243, %228
  br label %245

245:                                              ; preds = %244, %152
  br label %246

246:                                              ; preds = %245, %115
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %246, %242, %225, %219, %207, %187, %151, %112, %95, %71, %49, %38
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i64 @MF_HILO_INSN(i64) #1

declare dso_local i32 @insn_uses_reg(...) #1

declare dso_local i32 @EXTRACT_OPERAND(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @classify_vr4120_insn(i32) #1

declare dso_local i32 @know(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
