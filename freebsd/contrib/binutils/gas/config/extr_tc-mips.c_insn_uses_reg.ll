; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_insn_uses_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_insn_uses_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mips_cl_insn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MIPS16_REG = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@mips16_to_32_reg_map = common dso_local global i32* null, align 8
@MIPS_GR_REG = common dso_local global i32 0, align 4
@ZERO = common dso_local global i32 0, align 4
@MIPS_FP_REG = common dso_local global i32 0, align 4
@INSN_READ_FPR_S = common dso_local global i32 0, align 4
@FS = common dso_local global i32 0, align 4
@INSN_READ_FPR_T = common dso_local global i32 0, align 4
@FT = common dso_local global i32 0, align 4
@INSN_READ_GPR_S = common dso_local global i32 0, align 4
@RS = common dso_local global i32 0, align 4
@INSN_READ_GPR_T = common dso_local global i32 0, align 4
@RT = common dso_local global i32 0, align 4
@MIPS16_INSN_READ_X = common dso_local global i32 0, align 4
@RX = common dso_local global i32 0, align 4
@MIPS16_INSN_READ_Y = common dso_local global i32 0, align 4
@RY = common dso_local global i32 0, align 4
@MIPS16_INSN_READ_Z = common dso_local global i32 0, align 4
@MOVE32Z = common dso_local global i32 0, align 4
@MIPS16_INSN_READ_T = common dso_local global i32 0, align 4
@TREG = common dso_local global i32 0, align 4
@MIPS16_INSN_READ_SP = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@MIPS16_INSN_READ_31 = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4
@MIPS16_INSN_READ_GPR_X = common dso_local global i32 0, align 4
@REGR32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_cl_insn*, i32, i32)* @insn_uses_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_uses_reg(%struct.mips_cl_insn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mips_cl_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MIPS16_REG, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mips_opts, i32 0, i32 0), align 4
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** @mips16_to_32_reg_map, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MIPS_GR_REG, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %11, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MIPS_GR_REG, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ZERO, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %248

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MIPS_FP_REG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mips_opts, i32 0, i32 0), align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %40 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @INSN_READ_FPR_S, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %33
  %48 = load i32, i32* @FS, align 4
  %49 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %50 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i32 @EXTRACT_OPERAND(i32 %48, %struct.TYPE_3__* %51)
  %53 = and i32 %52, -2
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, -2
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %248

58:                                               ; preds = %47, %33
  %59 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %60 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @INSN_READ_FPR_T, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @FT, align 4
  %69 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %70 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = call i32 @EXTRACT_OPERAND(i32 %68, %struct.TYPE_3__* %71)
  %73 = and i32 %72, -2
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, -2
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %248

78:                                               ; preds = %67, %58
  br label %247

79:                                               ; preds = %29
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mips_opts, i32 0, i32 0), align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %119, label %82

82:                                               ; preds = %79
  %83 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %84 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @INSN_READ_GPR_S, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load i32, i32* @RS, align 4
  %93 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %94 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = call i32 @EXTRACT_OPERAND(i32 %92, %struct.TYPE_3__* %95)
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 1, i32* %4, align 4
  br label %248

100:                                              ; preds = %91, %82
  %101 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %102 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @INSN_READ_GPR_T, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = load i32, i32* @RT, align 4
  %111 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %112 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = call i32 @EXTRACT_OPERAND(i32 %110, %struct.TYPE_3__* %113)
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %248

118:                                              ; preds = %109, %100
  br label %246

119:                                              ; preds = %79
  %120 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %121 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MIPS16_INSN_READ_X, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %119
  %129 = load i32*, i32** @mips16_to_32_reg_map, align 8
  %130 = load i32, i32* @RX, align 4
  %131 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %132 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %130, %struct.TYPE_3__* %133)
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %129, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  store i32 1, i32* %4, align 4
  br label %248

141:                                              ; preds = %128, %119
  %142 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %143 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MIPS16_INSN_READ_Y, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %141
  %151 = load i32*, i32** @mips16_to_32_reg_map, align 8
  %152 = load i32, i32* @RY, align 4
  %153 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %154 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %153, i32 0, i32 0
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %152, %struct.TYPE_3__* %155)
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %151, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  store i32 1, i32* %4, align 4
  br label %248

163:                                              ; preds = %150, %141
  %164 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %165 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @MIPS16_INSN_READ_Z, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %163
  %173 = load i32*, i32** @mips16_to_32_reg_map, align 8
  %174 = load i32, i32* @MOVE32Z, align 4
  %175 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %176 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %175, i32 0, i32 0
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %174, %struct.TYPE_3__* %177)
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %172
  store i32 1, i32* %4, align 4
  br label %248

185:                                              ; preds = %172, %163
  %186 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %187 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %186, i32 0, i32 0
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @MIPS16_INSN_READ_T, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %185
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @TREG, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 1, i32* %4, align 4
  br label %248

199:                                              ; preds = %194, %185
  %200 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %201 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %200, i32 0, i32 0
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @MIPS16_INSN_READ_SP, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @SP, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store i32 1, i32* %4, align 4
  br label %248

213:                                              ; preds = %208, %199
  %214 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %215 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %214, i32 0, i32 0
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @MIPS16_INSN_READ_31, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %213
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @RA, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* %4, align 4
  br label %248

227:                                              ; preds = %222, %213
  %228 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %229 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %228, i32 0, i32 0
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @MIPS16_INSN_READ_GPR_X, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %227
  %237 = load i32, i32* @REGR32, align 4
  %238 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %239 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %238, i32 0, i32 0
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %239, align 8
  %241 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %237, %struct.TYPE_3__* %240)
  %242 = load i32, i32* %6, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  store i32 1, i32* %4, align 4
  br label %248

245:                                              ; preds = %236, %227
  br label %246

246:                                              ; preds = %245, %118
  br label %247

247:                                              ; preds = %246, %78
  store i32 0, i32* %4, align 4
  br label %248

248:                                              ; preds = %247, %244, %226, %212, %198, %184, %162, %140, %117, %99, %77, %57, %28
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EXTRACT_OPERAND(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @MIPS16_EXTRACT_OPERAND(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
