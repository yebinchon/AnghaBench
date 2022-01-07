; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_init_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_init_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_MACHINE_MODES = common dso_local global i32 0, align 4
@S_MODE = common dso_local global i64 0, align 8
@sparc_mode_class = common dso_local global i32* null, align 8
@D_MODE = common dso_local global i64 0, align 8
@T_MODE = common dso_local global i64 0, align 8
@O_MODE = common dso_local global i64 0, align 8
@SF_MODE = common dso_local global i64 0, align 8
@DF_MODE = common dso_local global i64 0, align 8
@TF_MODE = common dso_local global i64 0, align 8
@OF_MODE = common dso_local global i64 0, align 8
@CCFPmode = common dso_local global i64 0, align 8
@CCFPEmode = common dso_local global i64 0, align 8
@CCFP_MODE = common dso_local global i64 0, align 8
@CC_MODE = common dso_local global i64 0, align 8
@TARGET_ARCH64 = common dso_local global i64 0, align 8
@hard_64bit_mode_classes = common dso_local global i32 0, align 4
@hard_regno_mode_classes = common dso_local global i32 0, align 4
@hard_32bit_mode_classes = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@TARGET_V8PLUS = common dso_local global i64 0, align 8
@I64_REGS = common dso_local global i32 0, align 4
@sparc_regno_reg_class = common dso_local global i32* null, align 8
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@GENERAL_REGS = common dso_local global i32 0, align 4
@FP_REGS = common dso_local global i32 0, align 4
@EXTRA_FP_REGS = common dso_local global i32 0, align 4
@FPCC_REGS = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sparc_init_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_init_modes() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %182, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NUM_MACHINE_MODES, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %185

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @GET_MODE_CLASS(i32 %7)
  switch i32 %8, label %176 [
    i32 130, label %9
    i32 129, label %9
    i32 132, label %9
    i32 128, label %66
    i32 131, label %92
    i32 133, label %92
    i32 134, label %149
  ]

9:                                                ; preds = %6, %6, %6
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @GET_MODE_SIZE(i32 %10)
  %12 = icmp sle i32 %11, 4
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i64, i64* @S_MODE, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 1, %15
  %17 = load i32*, i32** @sparc_mode_class, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  br label %65

21:                                               ; preds = %9
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @GET_MODE_SIZE(i32 %22)
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i64, i64* @D_MODE, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = load i32*, i32** @sparc_mode_class, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %64

33:                                               ; preds = %21
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @GET_MODE_SIZE(i32 %34)
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i64, i64* @T_MODE, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = load i32*, i32** @sparc_mode_class, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %63

45:                                               ; preds = %33
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @GET_MODE_SIZE(i32 %46)
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i64, i64* @O_MODE, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 1, %51
  %53 = load i32*, i32** @sparc_mode_class, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %62

57:                                               ; preds = %45
  %58 = load i32*, i32** @sparc_mode_class, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %49
  br label %63

63:                                               ; preds = %62, %37
  br label %64

64:                                               ; preds = %63, %25
  br label %65

65:                                               ; preds = %64, %13
  br label %181

66:                                               ; preds = %6
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @GET_MODE_SIZE(i32 %67)
  %69 = icmp sle i32 %68, 4
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i64, i64* @SF_MODE, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 1, %72
  %74 = load i32*, i32** @sparc_mode_class, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %91

78:                                               ; preds = %66
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @GET_MODE_SIZE(i32 %79)
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i64, i64* @DF_MODE, align 8
  %84 = trunc i64 %83 to i32
  %85 = shl i32 1, %84
  %86 = load i32*, i32** @sparc_mode_class, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %78
  br label %91

91:                                               ; preds = %90, %70
  br label %181

92:                                               ; preds = %6, %6
  %93 = load i32, i32* %1, align 4
  %94 = call i32 @GET_MODE_SIZE(i32 %93)
  %95 = icmp sle i32 %94, 4
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i64, i64* @SF_MODE, align 8
  %98 = trunc i64 %97 to i32
  %99 = shl i32 1, %98
  %100 = load i32*, i32** @sparc_mode_class, align 8
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  br label %148

104:                                              ; preds = %92
  %105 = load i32, i32* %1, align 4
  %106 = call i32 @GET_MODE_SIZE(i32 %105)
  %107 = icmp eq i32 %106, 8
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i64, i64* @DF_MODE, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 1, %110
  %112 = load i32*, i32** @sparc_mode_class, align 8
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %147

116:                                              ; preds = %104
  %117 = load i32, i32* %1, align 4
  %118 = call i32 @GET_MODE_SIZE(i32 %117)
  %119 = icmp eq i32 %118, 16
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i64, i64* @TF_MODE, align 8
  %122 = trunc i64 %121 to i32
  %123 = shl i32 1, %122
  %124 = load i32*, i32** @sparc_mode_class, align 8
  %125 = load i32, i32* %1, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %146

128:                                              ; preds = %116
  %129 = load i32, i32* %1, align 4
  %130 = call i32 @GET_MODE_SIZE(i32 %129)
  %131 = icmp eq i32 %130, 32
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i64, i64* @OF_MODE, align 8
  %134 = trunc i64 %133 to i32
  %135 = shl i32 1, %134
  %136 = load i32*, i32** @sparc_mode_class, align 8
  %137 = load i32, i32* %1, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  br label %145

140:                                              ; preds = %128
  %141 = load i32*, i32** @sparc_mode_class, align 8
  %142 = load i32, i32* %1, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %140, %132
  br label %146

146:                                              ; preds = %145, %120
  br label %147

147:                                              ; preds = %146, %108
  br label %148

148:                                              ; preds = %147, %96
  br label %181

149:                                              ; preds = %6
  %150 = load i32, i32* %1, align 4
  %151 = load i64, i64* @CCFPmode, align 8
  %152 = trunc i64 %151 to i32
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %1, align 4
  %156 = load i64, i64* @CCFPEmode, align 8
  %157 = trunc i64 %156 to i32
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %154, %149
  %160 = load i64, i64* @CCFP_MODE, align 8
  %161 = trunc i64 %160 to i32
  %162 = shl i32 1, %161
  %163 = load i32*, i32** @sparc_mode_class, align 8
  %164 = load i32, i32* %1, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  br label %175

167:                                              ; preds = %154
  %168 = load i64, i64* @CC_MODE, align 8
  %169 = trunc i64 %168 to i32
  %170 = shl i32 1, %169
  %171 = load i32*, i32** @sparc_mode_class, align 8
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %170, i32* %174, align 4
  br label %175

175:                                              ; preds = %167, %159
  br label %181

176:                                              ; preds = %6
  %177 = load i32*, i32** @sparc_mode_class, align 8
  %178 = load i32, i32* %1, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 0, i32* %180, align 4
  br label %181

181:                                              ; preds = %176, %175, %148, %91, %65
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %1, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %1, align 4
  br label %2

185:                                              ; preds = %2
  %186 = load i64, i64* @TARGET_ARCH64, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load i32, i32* @hard_64bit_mode_classes, align 4
  store i32 %189, i32* @hard_regno_mode_classes, align 4
  br label %192

190:                                              ; preds = %185
  %191 = load i32, i32* @hard_32bit_mode_classes, align 4
  store i32 %191, i32* @hard_regno_mode_classes, align 4
  br label %192

192:                                              ; preds = %190, %188
  store i32 0, i32* %1, align 4
  br label %193

193:                                              ; preds = %260, %192
  %194 = load i32, i32* %1, align 4
  %195 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %263

197:                                              ; preds = %193
  %198 = load i32, i32* %1, align 4
  %199 = icmp slt i32 %198, 16
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load i64, i64* @TARGET_V8PLUS, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i32, i32* @I64_REGS, align 4
  %205 = load i32*, i32** @sparc_regno_reg_class, align 8
  %206 = load i32, i32* %1, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %204, i32* %208, align 4
  br label %259

209:                                              ; preds = %200, %197
  %210 = load i32, i32* %1, align 4
  %211 = icmp slt i32 %210, 32
  br i1 %211, label %216, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %1, align 4
  %214 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %212, %209
  %217 = load i32, i32* @GENERAL_REGS, align 4
  %218 = load i32*, i32** @sparc_regno_reg_class, align 8
  %219 = load i32, i32* %1, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %217, i32* %221, align 4
  br label %258

222:                                              ; preds = %212
  %223 = load i32, i32* %1, align 4
  %224 = icmp slt i32 %223, 64
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i32, i32* @FP_REGS, align 4
  %227 = load i32*, i32** @sparc_regno_reg_class, align 8
  %228 = load i32, i32* %1, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4
  br label %257

231:                                              ; preds = %222
  %232 = load i32, i32* %1, align 4
  %233 = icmp slt i32 %232, 96
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = load i32, i32* @EXTRA_FP_REGS, align 4
  %236 = load i32*, i32** @sparc_regno_reg_class, align 8
  %237 = load i32, i32* %1, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 %235, i32* %239, align 4
  br label %256

240:                                              ; preds = %231
  %241 = load i32, i32* %1, align 4
  %242 = icmp slt i32 %241, 100
  br i1 %242, label %243, label %249

243:                                              ; preds = %240
  %244 = load i32, i32* @FPCC_REGS, align 4
  %245 = load i32*, i32** @sparc_regno_reg_class, align 8
  %246 = load i32, i32* %1, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  br label %255

249:                                              ; preds = %240
  %250 = load i32, i32* @NO_REGS, align 4
  %251 = load i32*, i32** @sparc_regno_reg_class, align 8
  %252 = load i32, i32* %1, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %250, i32* %254, align 4
  br label %255

255:                                              ; preds = %249, %243
  br label %256

256:                                              ; preds = %255, %234
  br label %257

257:                                              ; preds = %256, %225
  br label %258

258:                                              ; preds = %257, %216
  br label %259

259:                                              ; preds = %258, %203
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %1, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %1, align 4
  br label %193

263:                                              ; preds = %193
  ret void
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
