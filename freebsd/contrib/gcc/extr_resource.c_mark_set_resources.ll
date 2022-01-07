; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_resource.c_mark_set_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_resource.c_mark_set_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resources = type { i32, i32, i32, i32, i32 }

@MARK_SRC_DEST_CALL = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i32* null, align 8
@global_regs = common dso_local global i32* null, align 8
@MARK_SRC_DEST = common dso_local global i32 0, align 4
@REG_SETJMP = common dso_local global i32 0, align 4
@CALL = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_set_resources(i32 %0, %struct.resources* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.resources*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.resources* %1, %struct.resources** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %19

19:                                               ; preds = %111, %4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @GET_CODE(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %341 [
    i32 145, label %23
    i32 158, label %23
    i32 154, label %23
    i32 129, label %23
    i32 151, label %23
    i32 152, label %23
    i32 150, label %23
    i32 147, label %23
    i32 132, label %23
    i32 153, label %23
    i32 144, label %23
    i32 156, label %24
    i32 157, label %31
    i32 148, label %101
    i32 149, label %101
    i32 135, label %113
    i32 155, label %134
    i32 136, label %139
    i32 142, label %167
    i32 139, label %167
    i32 143, label %167
    i32 140, label %167
    i32 138, label %172
    i32 141, label %172
    i32 134, label %187
    i32 128, label %187
    i32 146, label %201
    i32 133, label %224
    i32 137, label %274
    i32 130, label %312
    i32 160, label %312
    i32 131, label %315
    i32 159, label %318
  ]

23:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  br label %385

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.resources*, %struct.resources** %6, align 8
  %29 = getelementptr inbounds %struct.resources, %struct.resources* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  br label %385

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MARK_SRC_DEST_CALL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %100

35:                                               ; preds = %31
  %36 = load %struct.resources*, %struct.resources** %6, align 8
  %37 = getelementptr inbounds %struct.resources, %struct.resources* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.resources*, %struct.resources** %6, align 8
  %39 = getelementptr inbounds %struct.resources, %struct.resources* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %65, %35
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %40
  %45 = load i32*, i32** @call_used_regs, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load i32*, i32** @global_regs, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51, %44
  %59 = load %struct.resources*, %struct.resources** %6, align 8
  %60 = getelementptr inbounds %struct.resources, %struct.resources* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @SET_HARD_REG_BIT(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %40

68:                                               ; preds = %40
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @CALL_INSN_FUNCTION_USAGE(i32 %69)
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %86, %68
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @XEXP(i32 %75, i32 0)
  %77 = call i32 @GET_CODE(i32 %76)
  %78 = icmp eq i32 %77, 155
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @XEXP(i32 %80, i32 0)
  %82 = call i32 @SET_DEST(i32 %81)
  %83 = load %struct.resources*, %struct.resources** %6, align 8
  %84 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %82, %struct.resources* %83, i32 1, i32 %84)
  br label %85

85:                                               ; preds = %79, %74
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @XEXP(i32 %87, i32 1)
  store i32 %88, i32* %14, align 4
  br label %71

89:                                               ; preds = %71
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @REG_SETJMP, align 4
  %92 = call i32 @find_reg_note(i32 %90, i32 %91, i32* null)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.resources*, %struct.resources** %6, align 8
  %96 = getelementptr inbounds %struct.resources, %struct.resources* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @SET_HARD_REG_SET(i32 %97)
  br label %99

99:                                               ; preds = %94, %89
  br label %100

100:                                              ; preds = %99, %31
  br label %101

101:                                              ; preds = %19, %19, %100
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @PATTERN(i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @GET_CODE(i32 %104)
  %106 = icmp ne i32 %105, 129
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @GET_CODE(i32 %108)
  %110 = icmp ne i32 %109, 155
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %19

112:                                              ; preds = %107, %101
  br label %385

113:                                              ; preds = %19
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @SET_DEST(i32 %114)
  %116 = load %struct.resources*, %struct.resources** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @MARK_SRC_DEST_CALL, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @SET_SRC(i32 %121)
  %123 = call i32 @GET_CODE(i32 %122)
  %124 = load i32, i32* @CALL, align 4
  %125 = icmp ne i32 %123, %124
  br label %126

126:                                              ; preds = %120, %113
  %127 = phi i1 [ true, %113 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %8, align 4
  call void @mark_set_resources(i32 %115, %struct.resources* %116, i32 %128, i32 %129)
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @SET_SRC(i32 %130)
  %132 = load %struct.resources*, %struct.resources** %6, align 8
  %133 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %131, %struct.resources* %132, i32 0, i32 %133)
  br label %385

134:                                              ; preds = %19
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @XEXP(i32 %135, i32 0)
  %137 = load %struct.resources*, %struct.resources** %6, align 8
  %138 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %136, %struct.resources* %137, i32 1, i32 %138)
  br label %385

139:                                              ; preds = %19
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %163, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @XVECLEN(i32 %142, i32 0)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %140
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @XVECEXP(i32 %146, i32 0, i32 0)
  %148 = call i32 @INSN_ANNULLED_BRANCH_P(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @XVECEXP(i32 %151, i32 0, i32 %152)
  %154 = call i32 @INSN_FROM_TARGET_P(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %150, %145
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @XVECEXP(i32 %157, i32 0, i32 %158)
  %160 = load %struct.resources*, %struct.resources** %6, align 8
  %161 = load i32, i32* %8, align 4
  call void @mark_set_resources(i32 %159, %struct.resources* %160, i32 0, i32 %161)
  br label %162

162:                                              ; preds = %156, %150
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %140

166:                                              ; preds = %140
  br label %385

167:                                              ; preds = %19, %19, %19, %19
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @XEXP(i32 %168, i32 0)
  %170 = load %struct.resources*, %struct.resources** %6, align 8
  %171 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %169, %struct.resources* %170, i32 1, i32 %171)
  br label %385

172:                                              ; preds = %19, %19
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @XEXP(i32 %173, i32 0)
  %175 = load %struct.resources*, %struct.resources** %6, align 8
  %176 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %174, %struct.resources* %175, i32 1, i32 %176)
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @XEXP(i32 %177, i32 1)
  %179 = call i32 @XEXP(i32 %178, i32 0)
  %180 = load %struct.resources*, %struct.resources** %6, align 8
  %181 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %179, %struct.resources* %180, i32 0, i32 %181)
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @XEXP(i32 %182, i32 1)
  %184 = call i32 @XEXP(i32 %183, i32 1)
  %185 = load %struct.resources*, %struct.resources** %6, align 8
  %186 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %184, %struct.resources* %185, i32 0, i32 %186)
  br label %385

187:                                              ; preds = %19, %19
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @XEXP(i32 %188, i32 0)
  %190 = load %struct.resources*, %struct.resources** %6, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %189, %struct.resources* %190, i32 %191, i32 %192)
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @XEXP(i32 %193, i32 1)
  %195 = load %struct.resources*, %struct.resources** %6, align 8
  %196 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %194, %struct.resources* %195, i32 0, i32 %196)
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @XEXP(i32 %197, i32 2)
  %199 = load %struct.resources*, %struct.resources** %6, align 8
  %200 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %198, %struct.resources* %199, i32 0, i32 %200)
  br label %385

201:                                              ; preds = %19
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %201
  %205 = load %struct.resources*, %struct.resources** %6, align 8
  %206 = getelementptr inbounds %struct.resources, %struct.resources* %205, i32 0, i32 1
  store i32 1, i32* %206, align 4
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @MEM_READONLY_P(i32 %207)
  %209 = load %struct.resources*, %struct.resources** %6, align 8
  %210 = getelementptr inbounds %struct.resources, %struct.resources* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @MEM_VOLATILE_P(i32 %213)
  %215 = load %struct.resources*, %struct.resources** %6, align 8
  %216 = getelementptr inbounds %struct.resources, %struct.resources* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %204, %201
  %220 = load i32, i32* %5, align 4
  %221 = call i32 @XEXP(i32 %220, i32 0)
  %222 = load %struct.resources*, %struct.resources** %6, align 8
  %223 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %221, %struct.resources* %222, i32 0, i32 %223)
  br label %385

224:                                              ; preds = %19
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %273

227:                                              ; preds = %224
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @SUBREG_REG(i32 %228)
  %230 = call i32 @REG_P(i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @SUBREG_REG(i32 %233)
  %235 = load %struct.resources*, %struct.resources** %6, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %8, align 4
  call void @mark_set_resources(i32 %234, %struct.resources* %235, i32 %236, i32 %237)
  br label %272

238:                                              ; preds = %227
  %239 = load i32, i32* %5, align 4
  %240 = call i32 @subreg_regno(i32 %239)
  store i32 %240, i32* %15, align 4
  %241 = load i32, i32* %15, align 4
  %242 = load i32**, i32*** @hard_regno_nregs, align 8
  %243 = load i32, i32* %15, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i32*, i32** %242, i64 %244
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = call i64 @GET_MODE(i32 %247)
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = add i32 %241, %250
  store i32 %251, i32* %16, align 4
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %254 = icmp ule i32 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @gcc_assert(i32 %255)
  %257 = load i32, i32* %15, align 4
  store i32 %257, i32* %12, align 4
  br label %258

258:                                              ; preds = %268, %238
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %16, align 4
  %261 = icmp ult i32 %259, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %258
  %263 = load %struct.resources*, %struct.resources** %6, align 8
  %264 = getelementptr inbounds %struct.resources, %struct.resources* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %12, align 4
  %267 = call i32 @SET_HARD_REG_BIT(i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %262
  %269 = load i32, i32* %12, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %12, align 4
  br label %258

271:                                              ; preds = %258
  br label %272

272:                                              ; preds = %271, %232
  br label %273

273:                                              ; preds = %272, %224
  br label %385

274:                                              ; preds = %19
  %275 = load i32, i32* %7, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %311

277:                                              ; preds = %274
  %278 = load i32, i32* %5, align 4
  %279 = call i32 @REGNO(i32 %278)
  store i32 %279, i32* %17, align 4
  %280 = load i32, i32* %17, align 4
  %281 = load i32**, i32*** @hard_regno_nregs, align 8
  %282 = load i32, i32* %17, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i32*, i32** %281, i64 %283
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %5, align 4
  %287 = call i64 @GET_MODE(i32 %286)
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = add i32 %280, %289
  store i32 %290, i32* %18, align 4
  %291 = load i32, i32* %18, align 4
  %292 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %293 = icmp ule i32 %291, %292
  %294 = zext i1 %293 to i32
  %295 = call i32 @gcc_assert(i32 %294)
  %296 = load i32, i32* %17, align 4
  store i32 %296, i32* %12, align 4
  br label %297

297:                                              ; preds = %307, %277
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* %18, align 4
  %300 = icmp ult i32 %298, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %297
  %302 = load %struct.resources*, %struct.resources** %6, align 8
  %303 = getelementptr inbounds %struct.resources, %struct.resources* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %12, align 4
  %306 = call i32 @SET_HARD_REG_BIT(i32 %304, i32 %305)
  br label %307

307:                                              ; preds = %301
  %308 = load i32, i32* %12, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %12, align 4
  br label %297

310:                                              ; preds = %297
  br label %311

311:                                              ; preds = %310, %274
  br label %385

312:                                              ; preds = %19, %19
  %313 = load %struct.resources*, %struct.resources** %6, align 8
  %314 = getelementptr inbounds %struct.resources, %struct.resources* %313, i32 0, i32 2
  store i32 1, i32* %314, align 4
  br label %385

315:                                              ; preds = %19
  %316 = load %struct.resources*, %struct.resources** %6, align 8
  %317 = getelementptr inbounds %struct.resources, %struct.resources* %316, i32 0, i32 2
  store i32 1, i32* %317, align 4
  br label %342

318:                                              ; preds = %19
  %319 = load i32, i32* %5, align 4
  %320 = call i32 @MEM_VOLATILE_P(i32 %319)
  %321 = load %struct.resources*, %struct.resources** %6, align 8
  %322 = getelementptr inbounds %struct.resources, %struct.resources* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  store i32 0, i32* %10, align 4
  br label %325

325:                                              ; preds = %337, %318
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* %5, align 4
  %328 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i32 %327)
  %329 = icmp slt i32 %326, %328
  br i1 %329, label %330, label %340

330:                                              ; preds = %325
  %331 = load i32, i32* %5, align 4
  %332 = load i32, i32* %10, align 4
  %333 = call i32 @ASM_OPERANDS_INPUT(i32 %331, i32 %332)
  %334 = load %struct.resources*, %struct.resources** %6, align 8
  %335 = load i32, i32* %7, align 4
  %336 = load i32, i32* @MARK_SRC_DEST, align 4
  call void @mark_set_resources(i32 %333, %struct.resources* %334, i32 %335, i32 %336)
  br label %337

337:                                              ; preds = %330
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %10, align 4
  br label %325

340:                                              ; preds = %325
  br label %385

341:                                              ; preds = %19
  br label %342

342:                                              ; preds = %341, %315
  %343 = load i32, i32* %9, align 4
  %344 = call i8* @GET_RTX_FORMAT(i32 %343)
  store i8* %344, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %345

345:                                              ; preds = %382, %342
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* %9, align 4
  %348 = call i32 @GET_RTX_LENGTH(i32 %347)
  %349 = icmp slt i32 %346, %348
  br i1 %349, label %350, label %385

350:                                              ; preds = %345
  %351 = load i8*, i8** %13, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %13, align 8
  %353 = load i8, i8* %351, align 1
  %354 = sext i8 %353 to i32
  switch i32 %354, label %381 [
    i32 101, label %355
    i32 69, label %362
  ]

355:                                              ; preds = %350
  %356 = load i32, i32* %5, align 4
  %357 = load i32, i32* %10, align 4
  %358 = call i32 @XEXP(i32 %356, i32 %357)
  %359 = load %struct.resources*, %struct.resources** %6, align 8
  %360 = load i32, i32* %7, align 4
  %361 = load i32, i32* %8, align 4
  call void @mark_set_resources(i32 %358, %struct.resources* %359, i32 %360, i32 %361)
  br label %381

362:                                              ; preds = %350
  store i32 0, i32* %11, align 4
  br label %363

363:                                              ; preds = %377, %362
  %364 = load i32, i32* %11, align 4
  %365 = load i32, i32* %5, align 4
  %366 = load i32, i32* %10, align 4
  %367 = call i32 @XVECLEN(i32 %365, i32 %366)
  %368 = icmp slt i32 %364, %367
  br i1 %368, label %369, label %380

369:                                              ; preds = %363
  %370 = load i32, i32* %5, align 4
  %371 = load i32, i32* %10, align 4
  %372 = load i32, i32* %11, align 4
  %373 = call i32 @XVECEXP(i32 %370, i32 %371, i32 %372)
  %374 = load %struct.resources*, %struct.resources** %6, align 8
  %375 = load i32, i32* %7, align 4
  %376 = load i32, i32* %8, align 4
  call void @mark_set_resources(i32 %373, %struct.resources* %374, i32 %375, i32 %376)
  br label %377

377:                                              ; preds = %369
  %378 = load i32, i32* %11, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %11, align 4
  br label %363

380:                                              ; preds = %363
  br label %381

381:                                              ; preds = %350, %380, %355
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %10, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %10, align 4
  br label %345

385:                                              ; preds = %23, %30, %112, %126, %134, %166, %167, %172, %187, %219, %273, %311, %312, %340, %345
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @CALL_INSN_FUNCTION_USAGE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @find_reg_note(i32, i32, i32*) #1

declare dso_local i32 @SET_HARD_REG_SET(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @INSN_ANNULLED_BRANCH_P(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @INSN_FROM_TARGET_P(i32) #1

declare dso_local i32 @MEM_READONLY_P(i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @subreg_regno(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @ASM_OPERANDS_INPUT_LENGTH(i32) #1

declare dso_local i32 @ASM_OPERANDS_INPUT(i32, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
