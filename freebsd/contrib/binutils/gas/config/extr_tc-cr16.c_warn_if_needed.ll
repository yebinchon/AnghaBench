; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_warn_if_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_warn_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32 }

@LD_STOR_INS_INC = common dso_local global i32 0, align 4
@arg_r = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Same src/dest register is used (`r%d'), result is undefined\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"popret\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"RA register is saved twice.\00", align 1
@ra = common dso_local global i64 0, align 8
@RA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"`%s' Illegal use of registers.\00", align 1
@ins_parse = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"`%s' Illegal count-register combination.\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"`%s' Illegal use of register.\00", align 1
@instruction = common dso_local global %struct.TYPE_7__* null, align 8
@NO_SP = common dso_local global i32 0, align 4
@sp = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"`%s' has undefined result\00", align 1
@NO_RPTR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [59 x i8] c"Same src/dest register is used (`r%d'),result is undefined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @warn_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_if_needed(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load i32, i32* @LD_STOR_INS_INC, align 4
  %6 = call i64 @IS_INSN_TYPE(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @arg_r, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @arg_r, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %17, %8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @as_bad(i32 %41, i32 %48)
  br label %50

50:                                               ; preds = %40, %26
  br label %51

51:                                               ; preds = %50, %17
  br label %52

52:                                               ; preds = %51, %1
  %53 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %214

61:                                               ; preds = %58, %55, %52
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %3, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %142

72:                                               ; preds = %61
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @getreg_image(i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* %3, align 4
  %85 = icmp ugt i32 %84, 7
  br i1 %85, label %116, label %86

86:                                               ; preds = %83, %72
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %3, align 4
  %91 = icmp ugt i32 %90, 6
  br i1 %91, label %116, label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %3, align 4
  %97 = icmp ugt i32 %96, 5
  br i1 %97, label %116, label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 12
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %3, align 4
  %103 = icmp ugt i32 %102, 4
  br i1 %103, label %116, label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 13
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %3, align 4
  %109 = icmp ugt i32 %108, 2
  br i1 %109, label %116, label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %111, 14
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* %3, align 4
  %115 = icmp ugt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113, %107, %101, %95, %89, %83
  %117 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %118 = call i32 @as_warn(i32 %117)
  br label %119

119:                                              ; preds = %116, %113, %110
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ra, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %141, label %128

128:                                              ; preds = %119
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 2
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @RA, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %128
  %138 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %139 = load i32, i32* @ins_parse, align 4
  %140 = call i32 @as_bad(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %128, %119
  br label %142

142:                                              ; preds = %141, %61
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %190

147:                                              ; preds = %142
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @getreg_image(i32 %154)
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = icmp eq i32 %156, 11
  br i1 %157, label %158, label %161

158:                                              ; preds = %147
  %159 = load i32, i32* %3, align 4
  %160 = icmp ugt i32 %159, 7
  br i1 %160, label %185, label %161

161:                                              ; preds = %158, %147
  %162 = load i32, i32* %4, align 4
  %163 = icmp eq i32 %162, 12
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %3, align 4
  %166 = icmp ugt i32 %165, 6
  br i1 %166, label %185, label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %4, align 4
  %169 = icmp eq i32 %168, 13
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %3, align 4
  %172 = icmp ugt i32 %171, 4
  br i1 %172, label %185, label %173

173:                                              ; preds = %170, %167
  %174 = load i32, i32* %4, align 4
  %175 = icmp eq i32 %174, 14
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %3, align 4
  %178 = icmp ugt i32 %177, 2
  br i1 %178, label %185, label %179

179:                                              ; preds = %176, %173
  %180 = load i32, i32* %4, align 4
  %181 = icmp eq i32 %180, 15
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i32, i32* %3, align 4
  %184 = icmp ugt i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182, %176, %170, %164, %158
  %186 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %187 = load i32, i32* @ins_parse, align 4
  %188 = call i32 @as_bad(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %182, %179
  br label %213

190:                                              ; preds = %142
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @ra, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %212, label %199

199:                                              ; preds = %190
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @RA, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %199
  %209 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %210 = load i32, i32* @ins_parse, align 4
  %211 = call i32 @as_bad(i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %199, %190
  br label %213

213:                                              ; preds = %212, %189
  br label %214

214:                                              ; preds = %213, %58
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** @instruction, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @NO_SP, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %238

221:                                              ; preds = %214
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = call i32 @getreg_image(i32 %228)
  %230 = load i32, i32* @sp, align 4
  %231 = call i32 @getreg_image(i32 %230)
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %221
  %234 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %235 = load i32, i32* @ins_parse, align 4
  %236 = call i32 @as_bad(i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %221
  br label %238

238:                                              ; preds = %237, %214
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** @instruction, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @NO_RPTR, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %275

245:                                              ; preds = %238
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i32 @getreg_image(i32 %252)
  %254 = shl i32 1, %253
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 1
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %254, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %245
  %264 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = trunc i64 %270 to i32
  %272 = call i32 @getreg_image(i32 %271)
  %273 = call i32 @as_bad(i32 %264, i32 %272)
  br label %274

274:                                              ; preds = %263, %245
  br label %275

275:                                              ; preds = %274, %238
  ret void
}

declare dso_local i64 @IS_INSN_TYPE(i32) #1

declare dso_local i32 @as_bad(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @IS_INSN_MNEMONIC(i8*) #1

declare dso_local i32 @getreg_image(i32) #1

declare dso_local i32 @as_warn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
