; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_elimination_effects.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_elimination_effects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elim_table = type { i32, i32, i32, i32, i32 }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reg_eliminate = common dso_local global %struct.elim_table* null, align 8
@NUM_ELIMINABLE_REGS = common dso_local global i64 0, align 8
@reg_renumber = common dso_local global i32* null, align 8
@reg_equiv_constant = common dso_local global i32* null, align 8
@PLUS = common dso_local global i32 0, align 4
@reg_equiv_memory_loc = common dso_local global i32* null, align 8
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @elimination_effects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elimination_effects(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.elim_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GET_CODE(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %335 [
    i32 160, label %16
    i32 161, label %16
    i32 159, label %16
    i32 162, label %16
    i32 133, label %16
    i32 163, label %16
    i32 148, label %16
    i32 166, label %16
    i32 168, label %16
    i32 169, label %16
    i32 170, label %16
    i32 139, label %16
    i32 140, label %17
    i32 142, label %89
    i32 145, label %89
    i32 143, label %89
    i32 146, label %89
    i32 144, label %89
    i32 141, label %89
    i32 135, label %179
    i32 151, label %179
    i32 150, label %179
    i32 137, label %179
    i32 128, label %179
    i32 132, label %179
    i32 154, label %179
    i32 153, label %179
    i32 155, label %179
    i32 156, label %179
    i32 131, label %179
    i32 130, label %179
    i32 171, label %179
    i32 136, label %179
    i32 157, label %179
    i32 164, label %179
    i32 158, label %179
    i32 147, label %179
    i32 149, label %179
    i32 167, label %179
    i32 134, label %183
    i32 129, label %213
    i32 165, label %239
    i32 138, label %265
    i32 152, label %330
  ]

16:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %383

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @REGNO(i32 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %17
  %25 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %25, %struct.elim_table** %6, align 8
  br label %26

26:                                               ; preds = %51, %24
  %27 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %28 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %29 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %30 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %28, i64 %29
  %31 = icmp ult %struct.elim_table* %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %34 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %40 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %48 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %383

50:                                               ; preds = %38, %32
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %53 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %52, i32 1
  store %struct.elim_table* %53, %struct.elim_table** %6, align 8
  br label %26

54:                                               ; preds = %26
  br label %88

55:                                               ; preds = %17
  %56 = load i32*, i32** @reg_renumber, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %55
  %63 = load i32*, i32** @reg_equiv_constant, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32*, i32** @reg_equiv_constant, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load i32*, i32** @reg_equiv_constant, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @function_invariant_p(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %72
  %81 = load i32*, i32** @reg_equiv_constant, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %4, align 4
  call void @elimination_effects(i32 %85, i32 %86)
  br label %87

87:                                               ; preds = %80, %72, %65, %62, %55
  br label %88

88:                                               ; preds = %87, %54
  br label %383

89:                                               ; preds = %2, %2, %2, %2, %2, %2
  %90 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %90, %struct.elim_table** %6, align 8
  br label %91

91:                                               ; preds = %168, %89
  %92 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %93 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %94 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %95 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %93, i64 %94
  %96 = icmp ult %struct.elim_table* %92, %95
  br i1 %96, label %97, label %171

97:                                               ; preds = %91
  %98 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %99 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @XEXP(i32 %101, i32 0)
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %167

104:                                              ; preds = %97
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @GET_MODE_SIZE(i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 143
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 146
  br i1 %111, label %112, label %118

112:                                              ; preds = %109, %104
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %115 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %166

118:                                              ; preds = %109
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %119, 142
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, 145
  br i1 %123, label %124, label %130

124:                                              ; preds = %121, %118
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %127 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %165

130:                                              ; preds = %121
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %131, 141
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %5, align 4
  %135 = icmp eq i32 %134, 144
  br i1 %135, label %136, label %164

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @XEXP(i32 %137, i32 1)
  %139 = call i32 @GET_CODE(i32 %138)
  %140 = load i32, i32* @PLUS, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %136
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @XEXP(i32 %143, i32 0)
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @XEXP(i32 %145, i32 1)
  %147 = call i32 @XEXP(i32 %146, i32 0)
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %142
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @XEXP(i32 %150, i32 1)
  %152 = call i32 @XEXP(i32 %151, i32 1)
  %153 = call i32 @CONSTANT_P(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @XEXP(i32 %156, i32 1)
  %158 = call i32 @XEXP(i32 %157, i32 1)
  %159 = call i32 @INTVAL(i32 %158)
  %160 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %161 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %155, %149, %142, %136, %133
  br label %165

165:                                              ; preds = %164, %124
  br label %166

166:                                              ; preds = %165, %112
  br label %167

167:                                              ; preds = %166, %97
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %170 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %169, i32 1
  store %struct.elim_table* %170, %struct.elim_table** %6, align 8
  br label %91

171:                                              ; preds = %91
  %172 = load i32, i32* %5, align 4
  %173 = icmp eq i32 %172, 144
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %5, align 4
  %176 = icmp eq i32 %175, 141
  br i1 %176, label %177, label %178

177:                                              ; preds = %174, %171
  br label %336

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %178
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @XEXP(i32 %180, i32 0)
  %182 = load i32, i32* %4, align 4
  call void @elimination_effects(i32 %181, i32 %182)
  br label %383

183:                                              ; preds = %2
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @SUBREG_REG(i32 %184)
  %186 = call i32 @REG_P(i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %183
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @GET_MODE(i32 %189)
  %191 = call i32 @GET_MODE_SIZE(i32 %190)
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @SUBREG_REG(i32 %192)
  %194 = call i32 @GET_MODE(i32 %193)
  %195 = call i32 @GET_MODE_SIZE(i32 %194)
  %196 = icmp sle i32 %191, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %188
  %198 = load i32*, i32** @reg_equiv_memory_loc, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load i32*, i32** @reg_equiv_memory_loc, align 8
  %202 = load i32, i32* %3, align 4
  %203 = call i32 @SUBREG_REG(i32 %202)
  %204 = call i64 @REGNO(i32 %203)
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %383

209:                                              ; preds = %200, %197, %188, %183
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @SUBREG_REG(i32 %210)
  %212 = load i32, i32* %4, align 4
  call void @elimination_effects(i32 %211, i32 %212)
  br label %383

213:                                              ; preds = %2
  %214 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %214, %struct.elim_table** %6, align 8
  br label %215

215:                                              ; preds = %232, %213
  %216 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %217 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %218 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %219 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %217, i64 %218
  %220 = icmp ult %struct.elim_table* %216, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %215
  %222 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %223 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @XEXP(i32 %225, i32 0)
  %227 = icmp eq i32 %224, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %230 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %229, i32 0, i32 2
  store i32 0, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %221
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %234 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %233, i32 1
  store %struct.elim_table* %234, %struct.elim_table** %6, align 8
  br label %215

235:                                              ; preds = %215
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @XEXP(i32 %236, i32 0)
  %238 = load i32, i32* %4, align 4
  call void @elimination_effects(i32 %237, i32 %238)
  br label %383

239:                                              ; preds = %2
  %240 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %240, %struct.elim_table** %6, align 8
  br label %241

241:                                              ; preds = %258, %239
  %242 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %243 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %244 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %245 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %243, i64 %244
  %246 = icmp ult %struct.elim_table* %242, %245
  br i1 %246, label %247, label %261

247:                                              ; preds = %241
  %248 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %249 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %3, align 4
  %252 = call i32 @XEXP(i32 %251, i32 0)
  %253 = icmp eq i32 %250, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %256 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %255, i32 0, i32 2
  store i32 0, i32* %256, align 4
  br label %257

257:                                              ; preds = %254, %247
  br label %258

258:                                              ; preds = %257
  %259 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %260 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %259, i32 1
  store %struct.elim_table* %260, %struct.elim_table** %6, align 8
  br label %241

261:                                              ; preds = %241
  %262 = load i32, i32* %3, align 4
  %263 = call i32 @XEXP(i32 %262, i32 0)
  %264 = load i32, i32* %4, align 4
  call void @elimination_effects(i32 %263, i32 %264)
  br label %383

265:                                              ; preds = %2
  %266 = load i32, i32* %3, align 4
  %267 = call i32 @SET_DEST(i32 %266)
  %268 = call i32 @REG_P(i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %325

270:                                              ; preds = %265
  %271 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %271, %struct.elim_table** %6, align 8
  br label %272

272:                                              ; preds = %321, %270
  %273 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %274 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %275 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %276 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %274, i64 %275
  %277 = icmp ult %struct.elim_table* %273, %276
  br i1 %277, label %278, label %324

278:                                              ; preds = %272
  %279 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %280 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @SET_DEST(i32 %282)
  %284 = icmp eq i32 %281, %283
  br i1 %284, label %285, label %320

285:                                              ; preds = %278
  %286 = load i32, i32* %3, align 4
  %287 = call i32 @SET_DEST(i32 %286)
  %288 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %320

290:                                              ; preds = %285
  %291 = load i32, i32* %3, align 4
  %292 = call i32 @SET_SRC(i32 %291)
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %12, align 4
  %294 = call i32 @GET_CODE(i32 %293)
  %295 = load i32, i32* @PLUS, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %316

297:                                              ; preds = %290
  %298 = load i32, i32* %12, align 4
  %299 = call i32 @XEXP(i32 %298, i32 0)
  %300 = load i32, i32* %3, align 4
  %301 = call i32 @SET_DEST(i32 %300)
  %302 = icmp eq i32 %299, %301
  br i1 %302, label %303, label %316

303:                                              ; preds = %297
  %304 = load i32, i32* %12, align 4
  %305 = call i32 @XEXP(i32 %304, i32 1)
  %306 = call i32 @GET_CODE(i32 %305)
  %307 = icmp eq i32 %306, 160
  br i1 %307, label %308, label %316

308:                                              ; preds = %303
  %309 = load i32, i32* %12, align 4
  %310 = call i32 @XEXP(i32 %309, i32 1)
  %311 = call i32 @INTVAL(i32 %310)
  %312 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %313 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = sub nsw i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %319

316:                                              ; preds = %303, %297, %290
  %317 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %318 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %317, i32 0, i32 2
  store i32 0, i32* %318, align 4
  br label %319

319:                                              ; preds = %316, %308
  br label %320

320:                                              ; preds = %319, %285, %278
  br label %321

321:                                              ; preds = %320
  %322 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %323 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %322, i32 1
  store %struct.elim_table* %323, %struct.elim_table** %6, align 8
  br label %272

324:                                              ; preds = %272
  br label %325

325:                                              ; preds = %324, %265
  %326 = load i32, i32* %3, align 4
  %327 = call i32 @SET_DEST(i32 %326)
  call void @elimination_effects(i32 %327, i32 0)
  %328 = load i32, i32* %3, align 4
  %329 = call i32 @SET_SRC(i32 %328)
  call void @elimination_effects(i32 %329, i32 0)
  br label %383

330:                                              ; preds = %2
  %331 = load i32, i32* %3, align 4
  %332 = call i32 @XEXP(i32 %331, i32 0)
  %333 = load i32, i32* %3, align 4
  %334 = call i32 @GET_MODE(i32 %333)
  call void @elimination_effects(i32 %332, i32 %334)
  br label %383

335:                                              ; preds = %2
  br label %336

336:                                              ; preds = %335, %177
  %337 = load i32, i32* %5, align 4
  %338 = call i8* @GET_RTX_FORMAT(i32 %337)
  store i8* %338, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %339

339:                                              ; preds = %378, %336
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* %5, align 4
  %342 = call i32 @GET_RTX_LENGTH(i32 %341)
  %343 = icmp slt i32 %340, %342
  br i1 %343, label %344, label %383

344:                                              ; preds = %339
  %345 = load i8*, i8** %10, align 8
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 101
  br i1 %348, label %349, label %354

349:                                              ; preds = %344
  %350 = load i32, i32* %3, align 4
  %351 = load i32, i32* %8, align 4
  %352 = call i32 @XEXP(i32 %350, i32 %351)
  %353 = load i32, i32* %4, align 4
  call void @elimination_effects(i32 %352, i32 %353)
  br label %377

354:                                              ; preds = %344
  %355 = load i8*, i8** %10, align 8
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 69
  br i1 %358, label %359, label %376

359:                                              ; preds = %354
  store i32 0, i32* %9, align 4
  br label %360

360:                                              ; preds = %372, %359
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* %3, align 4
  %363 = load i32, i32* %8, align 4
  %364 = call i32 @XVECLEN(i32 %362, i32 %363)
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %375

366:                                              ; preds = %360
  %367 = load i32, i32* %3, align 4
  %368 = load i32, i32* %8, align 4
  %369 = load i32, i32* %9, align 4
  %370 = call i32 @XVECEXP(i32 %367, i32 %368, i32 %369)
  %371 = load i32, i32* %4, align 4
  call void @elimination_effects(i32 %370, i32 %371)
  br label %372

372:                                              ; preds = %366
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %9, align 4
  br label %360

375:                                              ; preds = %360
  br label %376

376:                                              ; preds = %375, %354
  br label %377

377:                                              ; preds = %376, %349
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %8, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %8, align 4
  %381 = load i8*, i8** %10, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %382, i8** %10, align 8
  br label %339

383:                                              ; preds = %16, %49, %88, %179, %208, %209, %235, %261, %325, %330, %339
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @function_invariant_p(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
