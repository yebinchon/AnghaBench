; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@error_mark_node = common dso_local global i32 0, align 4
@BIT_XOR_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@SLOW_BYTE_ACCESS = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@cmp_optab = common dso_local global %struct.TYPE_8__* null, align 8
@CODE_FOR_nothing = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@MODE_COMPLEX_FLOAT = common dso_local global i32 0, align 4
@MODE_COMPLEX_INT = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@ccp_jump = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@UNORDERED = common dso_local global i32 0, align 4
@ORDERED = common dso_local global i32 0, align 4
@UNLT = common dso_local global i32 0, align 4
@UNLE = common dso_local global i32 0, align 4
@UNGT = common dso_local global i32 0, align 4
@UNGE = common dso_local global i32 0, align 4
@UNEQ = common dso_local global i32 0, align 4
@LTGT = common dso_local global i32 0, align 4
@BRANCH_COST = common dso_local global i32 0, align 4
@BUILT_IN_NORMAL = common dso_local global i32 0, align 4
@BUILT_IN_EXPECT = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_jump(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @TREE_CODE(i32 %43)
  store i32 %44, i32* %7, align 4
  store i64 0, i64* %12, align 8
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %783 [
    i32 153, label %46
    i32 150, label %47
    i32 141, label %63
    i32 155, label %85
    i32 142, label %96
    i32 165, label %96
    i32 144, label %96
    i32 148, label %96
    i32 139, label %96
    i32 161, label %101
    i32 136, label %260
    i32 156, label %265
    i32 138, label %300
    i32 135, label %300
    i32 157, label %300
    i32 158, label %302
    i32 160, label %302
    i32 162, label %302
    i32 163, label %302
    i32 154, label %343
    i32 145, label %397
    i32 143, label %405
    i32 146, label %459
    i32 149, label %487
    i32 151, label %515
    i32 152, label %543
    i32 128, label %571
    i32 140, label %571
    i32 129, label %619
    i32 130, label %621
    i32 131, label %623
    i32 132, label %625
    i32 133, label %627
    i32 147, label %629
    i32 137, label %678
    i32 134, label %711
    i32 159, label %744
  ]

46:                                               ; preds = %3
  br label %823

47:                                               ; preds = %3
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @integer_zerop(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  br label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @emit_jump(i64 %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %823

63:                                               ; preds = %3
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @TREE_OPERAND(i32 %64, i32 0)
  %66 = call i32 @TREE_CODE(i32 %65)
  %67 = icmp eq i32 %66, 158
  br i1 %67, label %83, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @TREE_OPERAND(i32 %69, i32 0)
  %71 = call i32 @TREE_CODE(i32 %70)
  %72 = icmp eq i32 %71, 160
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @TREE_OPERAND(i32 %74, i32 0)
  %76 = call i32 @TREE_CODE(i32 %75)
  %77 = icmp eq i32 %76, 162
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @TREE_OPERAND(i32 %79, i32 0)
  %81 = call i32 @TREE_CODE(i32 %80)
  %82 = icmp eq i32 %81, 163
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %73, %68, %63
  br label %784

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %3, %84
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @TREE_TYPE(i32 %86)
  %88 = call i32 @TYPE_PRECISION(i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @TREE_OPERAND(i32 %89, i32 0)
  %91 = call i32 @TREE_TYPE(i32 %90)
  %92 = call i32 @TYPE_PRECISION(i32 %91)
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %784

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %3, %3, %3, %3, %3, %95
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @TREE_OPERAND(i32 %97, i32 0)
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %6, align 8
  call void @do_jump(i32 %98, i64 %99, i64 %100)
  br label %823

101:                                              ; preds = %3
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @TREE_OPERAND(i32 %102, i32 1)
  %104 = call i32 @integer_onep(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %203

106:                                              ; preds = %101
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @TREE_OPERAND(i32 %107, i32 0)
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %137, %106
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @TREE_CODE(i32 %110)
  %112 = icmp eq i32 %111, 141
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @TREE_CODE(i32 %114)
  %116 = icmp eq i32 %115, 155
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @TREE_CODE(i32 %118)
  %120 = icmp eq i32 %119, 142
  br i1 %120, label %121, label %135

121:                                              ; preds = %117, %113, %109
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @TREE_OPERAND(i32 %122, i32 0)
  %124 = load i32, i32* @error_mark_node, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @TREE_TYPE(i32 %127)
  %129 = call i32 @TYPE_PRECISION(i32 %128)
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @TREE_OPERAND(i32 %130, i32 0)
  %132 = call i32 @TREE_TYPE(i32 %131)
  %133 = call i32 @TYPE_PRECISION(i32 %132)
  %134 = icmp sle i32 %129, %133
  br label %135

135:                                              ; preds = %126, %121, %117
  %136 = phi i1 [ false, %121 ], [ false, %117 ], [ %134, %126 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @TREE_OPERAND(i32 %138, i32 0)
  store i32 %139, i32* %13, align 4
  br label %109

140:                                              ; preds = %135
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @TREE_CODE(i32 %141)
  %143 = load i32, i32* @BIT_XOR_EXPR, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @TREE_OPERAND(i32 %146, i32 1)
  %148 = call i32 @integer_onep(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @TREE_OPERAND(i32 %151, i32 0)
  store i32 %152, i32* %13, align 4
  %153 = load i64, i64* %6, align 8
  store i64 %153, i64* %15, align 8
  %154 = load i64, i64* %5, align 8
  store i64 %154, i64* %14, align 8
  br label %158

155:                                              ; preds = %145, %140
  %156 = load i64, i64* %5, align 8
  store i64 %156, i64* %15, align 8
  %157 = load i64, i64* %6, align 8
  store i64 %157, i64* %14, align 8
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @TREE_CODE(i32 %159)
  %161 = load i32, i32* @RSHIFT_EXPR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %202

163:                                              ; preds = %158
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @TREE_OPERAND(i32 %164, i32 0)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @TREE_OPERAND(i32 %166, i32 1)
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @TREE_TYPE(i32 %168)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @TREE_CODE(i32 %170)
  %172 = icmp eq i32 %171, 150
  br i1 %172, label %173, label %201

173:                                              ; preds = %163
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @compare_tree_int(i32 %174, i32 0)
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %201

177:                                              ; preds = %173
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %180 = call i32 @compare_tree_int(i32 %178, i32 %179)
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %177
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @TYPE_MODE(i32 %183)
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @TREE_INT_CST_LOW(i32 %185)
  %187 = call i32 @prefer_and_bit_test(i32 %184, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %182
  %190 = load i32, i32* %17, align 4
  %191 = call i32 @TREE_INT_CST_LOW(i32 %190)
  %192 = shl i32 1, %191
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %19, align 4
  %197 = call i32 @build_int_cst_type(i32 %195, i32 %196)
  %198 = call i32 @build2(i32 161, i32 %193, i32 %194, i32 %197)
  %199 = load i64, i64* %15, align 8
  %200 = load i64, i64* %14, align 8
  call void @do_jump(i32 %198, i64 %199, i64 %200)
  br label %823

201:                                              ; preds = %182, %177, %173, %163
  br label %202

202:                                              ; preds = %201, %158
  br label %203

203:                                              ; preds = %202, %101
  %204 = load i32, i32* @SLOW_BYTE_ACCESS, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %259, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @TREE_OPERAND(i32 %207, i32 1)
  %209 = call i32 @TREE_CODE(i32 %208)
  %210 = icmp eq i32 %209, 150
  br i1 %210, label %211, label %259

211:                                              ; preds = %206
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @TREE_TYPE(i32 %212)
  %214 = call i32 @TYPE_PRECISION(i32 %213)
  %215 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %216 = icmp sle i32 %214, %215
  br i1 %216, label %217, label %259

217:                                              ; preds = %211
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @TREE_OPERAND(i32 %218, i32 1)
  %220 = call i32 @tree_floor_log2(i32 %219)
  store i32 %220, i32* %9, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %259

222:                                              ; preds = %217
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  %225 = load i32, i32* @MODE_INT, align 4
  %226 = call i32 @mode_for_size(i32 %224, i32 %225, i32 0)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* @BLKmode, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %259

229:                                              ; preds = %222
  %230 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 0, i32 1), align 8
  %231 = load i32, i32* %11, align 4
  %232 = call i32 %230(i32 %231, i32 1)
  store i32 %232, i32* %10, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %259

234:                                              ; preds = %229
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @TYPE_PRECISION(i32 %235)
  %237 = load i32, i32* %4, align 4
  %238 = call i32 @TREE_TYPE(i32 %237)
  %239 = call i32 @TYPE_PRECISION(i32 %238)
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %259

241:                                              ; preds = %234
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmp_optab, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @TYPE_MODE(i32 %245)
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @CODE_FOR_nothing, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %241
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %4, align 4
  %256 = call i32 @fold_convert(i32 %254, i32 %255)
  %257 = load i64, i64* %5, align 8
  %258 = load i64, i64* %6, align 8
  call void @do_jump(i32 %256, i64 %257, i64 %258)
  br label %823

259:                                              ; preds = %241, %234, %229, %222, %217, %211, %206, %203
  br label %784

260:                                              ; preds = %3
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @TREE_OPERAND(i32 %261, i32 0)
  %263 = load i64, i64* %6, align 8
  %264 = load i64, i64* %5, align 8
  call void @do_jump(i32 %262, i64 %263, i64 %264)
  br label %823

265:                                              ; preds = %3
  %266 = call i64 (...) @gen_label_rtx()
  store i64 %266, i64* %20, align 8
  %267 = load i64, i64* %6, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load i64, i64* %5, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %284, label %272

272:                                              ; preds = %269, %265
  %273 = call i64 (...) @gen_label_rtx()
  store i64 %273, i64* %12, align 8
  %274 = load i64, i64* %6, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %272
  %277 = load i64, i64* %12, align 8
  store i64 %277, i64* %6, align 8
  br label %278

278:                                              ; preds = %276, %272
  %279 = load i64, i64* %5, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %278
  %282 = load i64, i64* %12, align 8
  store i64 %282, i64* %5, align 8
  br label %283

283:                                              ; preds = %281, %278
  br label %284

284:                                              ; preds = %283, %269
  %285 = call i32 (...) @do_pending_stack_adjust()
  %286 = load i32, i32* %4, align 4
  %287 = call i32 @TREE_OPERAND(i32 %286, i32 0)
  %288 = load i64, i64* %20, align 8
  %289 = load i64, i64* @NULL_RTX, align 8
  call void @do_jump(i32 %287, i64 %288, i64 %289)
  %290 = load i32, i32* %4, align 4
  %291 = call i32 @TREE_OPERAND(i32 %290, i32 1)
  %292 = load i64, i64* %5, align 8
  %293 = load i64, i64* %6, align 8
  call void @do_jump(i32 %291, i64 %292, i64 %293)
  %294 = load i64, i64* %20, align 8
  %295 = call i32 @emit_label(i64 %294)
  %296 = load i32, i32* %4, align 4
  %297 = call i32 @TREE_OPERAND(i32 %296, i32 2)
  %298 = load i64, i64* %5, align 8
  %299 = load i64, i64* %6, align 8
  call void @do_jump(i32 %297, i64 %298, i64 %299)
  br label %823

300:                                              ; preds = %3, %3, %3
  %301 = call i32 (...) @gcc_unreachable()
  br label %302

302:                                              ; preds = %3, %3, %3, %3, %300
  store i32 0, i32* %27, align 4
  %303 = load i32, i32* %4, align 4
  %304 = call i32 @get_inner_reference(i32 %303, i32* %21, i32* %22, i32* %26, i32* %24, i32* %23, i32* %27, i32 0)
  %305 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %306 = load i32, i32* %21, align 4
  %307 = load i32, i32* %23, align 4
  %308 = call i32 %305(i32 %306, i32 %307)
  store i32 %308, i32* %25, align 4
  %309 = load i32, i32* @SLOW_BYTE_ACCESS, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %342, label %311

311:                                              ; preds = %302
  %312 = load i32, i32* %25, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %342

314:                                              ; preds = %311
  %315 = load i32, i32* %21, align 4
  %316 = icmp sge i32 %315, 0
  br i1 %316, label %317, label %342

317:                                              ; preds = %314
  %318 = load i32, i32* %25, align 4
  %319 = call i32 @TYPE_PRECISION(i32 %318)
  %320 = load i32, i32* %4, align 4
  %321 = call i32 @TREE_TYPE(i32 %320)
  %322 = call i32 @TYPE_PRECISION(i32 %321)
  %323 = icmp slt i32 %319, %322
  br i1 %323, label %324, label %342

324:                                              ; preds = %317
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmp_optab, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %326, align 8
  %328 = load i32, i32* %25, align 4
  %329 = call i32 @TYPE_MODE(i32 %328)
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @CODE_FOR_nothing, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %342

336:                                              ; preds = %324
  %337 = load i32, i32* %25, align 4
  %338 = load i32, i32* %4, align 4
  %339 = call i32 @fold_convert(i32 %337, i32 %338)
  %340 = load i64, i64* %5, align 8
  %341 = load i64, i64* %6, align 8
  call void @do_jump(i32 %339, i64 %340, i64 %341)
  br label %823

342:                                              ; preds = %324, %317, %314, %311, %302
  br label %784

343:                                              ; preds = %3
  %344 = load i32, i32* %4, align 4
  %345 = call i32 @TREE_OPERAND(i32 %344, i32 0)
  %346 = call i32 @TREE_TYPE(i32 %345)
  store i32 %346, i32* %28, align 4
  %347 = load i32, i32* %28, align 4
  %348 = call i32 @TYPE_MODE(i32 %347)
  %349 = call i32 @GET_MODE_CLASS(i32 %348)
  %350 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %351 = icmp ne i32 %349, %350
  %352 = zext i1 %351 to i32
  %353 = call i32 @gcc_assert(i32 %352)
  %354 = load i32, i32* %28, align 4
  %355 = call i32 @TYPE_MODE(i32 %354)
  %356 = call i32 @GET_MODE_CLASS(i32 %355)
  %357 = load i32, i32* @MODE_COMPLEX_INT, align 4
  %358 = icmp ne i32 %356, %357
  %359 = zext i1 %358 to i32
  %360 = call i32 @gcc_assert(i32 %359)
  %361 = load i32, i32* %4, align 4
  %362 = call i32 @TREE_OPERAND(i32 %361, i32 1)
  %363 = call i32 @integer_zerop(i32 %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %343
  %366 = load i32, i32* %4, align 4
  %367 = call i32 @TREE_OPERAND(i32 %366, i32 0)
  %368 = load i64, i64* %6, align 8
  %369 = load i64, i64* %5, align 8
  call void @do_jump(i32 %367, i64 %368, i64 %369)
  br label %396

370:                                              ; preds = %343
  %371 = load i32, i32* %28, align 4
  %372 = call i32 @TYPE_MODE(i32 %371)
  %373 = call i32 @GET_MODE_CLASS(i32 %372)
  %374 = load i32, i32* @MODE_INT, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %388

376:                                              ; preds = %370
  %377 = load i32, i32* @EQ, align 4
  %378 = load i32, i32* %28, align 4
  %379 = call i32 @TYPE_MODE(i32 %378)
  %380 = load i32, i32* @ccp_jump, align 4
  %381 = call i32 @can_compare_p(i32 %377, i32 %379, i32 %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %388, label %383

383:                                              ; preds = %376
  %384 = load i32, i32* %4, align 4
  %385 = load i64, i64* %5, align 8
  %386 = load i64, i64* %6, align 8
  %387 = call i32 @do_jump_by_parts_equality(i32 %384, i64 %385, i64 %386)
  br label %395

388:                                              ; preds = %376, %370
  %389 = load i32, i32* %4, align 4
  %390 = load i32, i32* @EQ, align 4
  %391 = load i32, i32* @EQ, align 4
  %392 = load i64, i64* %5, align 8
  %393 = load i64, i64* %6, align 8
  %394 = call i32 @do_compare_and_jump(i32 %389, i32 %390, i32 %391, i64 %392, i64 %393)
  br label %395

395:                                              ; preds = %388, %383
  br label %396

396:                                              ; preds = %395, %365
  br label %823

397:                                              ; preds = %3
  %398 = load i32, i32* %4, align 4
  %399 = call i32 @TREE_TYPE(i32 %398)
  %400 = load i32, i32* %4, align 4
  %401 = call i32 @TREE_OPERAND(i32 %400, i32 0)
  %402 = load i32, i32* %4, align 4
  %403 = call i32 @TREE_OPERAND(i32 %402, i32 1)
  %404 = call i32 @build2(i32 143, i32 %399, i32 %401, i32 %403)
  store i32 %404, i32* %4, align 4
  br label %405

405:                                              ; preds = %3, %397
  %406 = load i32, i32* %4, align 4
  %407 = call i32 @TREE_OPERAND(i32 %406, i32 0)
  %408 = call i32 @TREE_TYPE(i32 %407)
  store i32 %408, i32* %29, align 4
  %409 = load i32, i32* %29, align 4
  %410 = call i32 @TYPE_MODE(i32 %409)
  %411 = call i32 @GET_MODE_CLASS(i32 %410)
  %412 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %413 = icmp ne i32 %411, %412
  %414 = zext i1 %413 to i32
  %415 = call i32 @gcc_assert(i32 %414)
  %416 = load i32, i32* %29, align 4
  %417 = call i32 @TYPE_MODE(i32 %416)
  %418 = call i32 @GET_MODE_CLASS(i32 %417)
  %419 = load i32, i32* @MODE_COMPLEX_INT, align 4
  %420 = icmp ne i32 %418, %419
  %421 = zext i1 %420 to i32
  %422 = call i32 @gcc_assert(i32 %421)
  %423 = load i32, i32* %4, align 4
  %424 = call i32 @TREE_OPERAND(i32 %423, i32 1)
  %425 = call i32 @integer_zerop(i32 %424)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %405
  %428 = load i32, i32* %4, align 4
  %429 = call i32 @TREE_OPERAND(i32 %428, i32 0)
  %430 = load i64, i64* %5, align 8
  %431 = load i64, i64* %6, align 8
  call void @do_jump(i32 %429, i64 %430, i64 %431)
  br label %458

432:                                              ; preds = %405
  %433 = load i32, i32* %29, align 4
  %434 = call i32 @TYPE_MODE(i32 %433)
  %435 = call i32 @GET_MODE_CLASS(i32 %434)
  %436 = load i32, i32* @MODE_INT, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %450

438:                                              ; preds = %432
  %439 = load i32, i32* @NE, align 4
  %440 = load i32, i32* %29, align 4
  %441 = call i32 @TYPE_MODE(i32 %440)
  %442 = load i32, i32* @ccp_jump, align 4
  %443 = call i32 @can_compare_p(i32 %439, i32 %441, i32 %442)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %450, label %445

445:                                              ; preds = %438
  %446 = load i32, i32* %4, align 4
  %447 = load i64, i64* %6, align 8
  %448 = load i64, i64* %5, align 8
  %449 = call i32 @do_jump_by_parts_equality(i32 %446, i64 %447, i64 %448)
  br label %457

450:                                              ; preds = %438, %432
  %451 = load i32, i32* %4, align 4
  %452 = load i32, i32* @NE, align 4
  %453 = load i32, i32* @NE, align 4
  %454 = load i64, i64* %5, align 8
  %455 = load i64, i64* %6, align 8
  %456 = call i32 @do_compare_and_jump(i32 %451, i32 %452, i32 %453, i64 %454, i64 %455)
  br label %457

457:                                              ; preds = %450, %445
  br label %458

458:                                              ; preds = %457, %427
  br label %823

459:                                              ; preds = %3
  %460 = load i32, i32* %4, align 4
  %461 = call i32 @TREE_OPERAND(i32 %460, i32 0)
  %462 = call i32 @TREE_TYPE(i32 %461)
  %463 = call i32 @TYPE_MODE(i32 %462)
  store i32 %463, i32* %11, align 4
  %464 = load i32, i32* %11, align 4
  %465 = call i32 @GET_MODE_CLASS(i32 %464)
  %466 = load i32, i32* @MODE_INT, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %479

468:                                              ; preds = %459
  %469 = load i32, i32* @LT, align 4
  %470 = load i32, i32* %11, align 4
  %471 = load i32, i32* @ccp_jump, align 4
  %472 = call i32 @can_compare_p(i32 %469, i32 %470, i32 %471)
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %479, label %474

474:                                              ; preds = %468
  %475 = load i32, i32* %4, align 4
  %476 = load i64, i64* %5, align 8
  %477 = load i64, i64* %6, align 8
  %478 = call i32 @do_jump_by_parts_greater(i32 %475, i32 1, i64 %476, i64 %477)
  br label %486

479:                                              ; preds = %468, %459
  %480 = load i32, i32* %4, align 4
  %481 = load i32, i32* @LT, align 4
  %482 = load i32, i32* @LTU, align 4
  %483 = load i64, i64* %5, align 8
  %484 = load i64, i64* %6, align 8
  %485 = call i32 @do_compare_and_jump(i32 %480, i32 %481, i32 %482, i64 %483, i64 %484)
  br label %486

486:                                              ; preds = %479, %474
  br label %823

487:                                              ; preds = %3
  %488 = load i32, i32* %4, align 4
  %489 = call i32 @TREE_OPERAND(i32 %488, i32 0)
  %490 = call i32 @TREE_TYPE(i32 %489)
  %491 = call i32 @TYPE_MODE(i32 %490)
  store i32 %491, i32* %11, align 4
  %492 = load i32, i32* %11, align 4
  %493 = call i32 @GET_MODE_CLASS(i32 %492)
  %494 = load i32, i32* @MODE_INT, align 4
  %495 = icmp eq i32 %493, %494
  br i1 %495, label %496, label %507

496:                                              ; preds = %487
  %497 = load i32, i32* @LE, align 4
  %498 = load i32, i32* %11, align 4
  %499 = load i32, i32* @ccp_jump, align 4
  %500 = call i32 @can_compare_p(i32 %497, i32 %498, i32 %499)
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %507, label %502

502:                                              ; preds = %496
  %503 = load i32, i32* %4, align 4
  %504 = load i64, i64* %6, align 8
  %505 = load i64, i64* %5, align 8
  %506 = call i32 @do_jump_by_parts_greater(i32 %503, i32 0, i64 %504, i64 %505)
  br label %514

507:                                              ; preds = %496, %487
  %508 = load i32, i32* %4, align 4
  %509 = load i32, i32* @LE, align 4
  %510 = load i32, i32* @LEU, align 4
  %511 = load i64, i64* %5, align 8
  %512 = load i64, i64* %6, align 8
  %513 = call i32 @do_compare_and_jump(i32 %508, i32 %509, i32 %510, i64 %511, i64 %512)
  br label %514

514:                                              ; preds = %507, %502
  br label %823

515:                                              ; preds = %3
  %516 = load i32, i32* %4, align 4
  %517 = call i32 @TREE_OPERAND(i32 %516, i32 0)
  %518 = call i32 @TREE_TYPE(i32 %517)
  %519 = call i32 @TYPE_MODE(i32 %518)
  store i32 %519, i32* %11, align 4
  %520 = load i32, i32* %11, align 4
  %521 = call i32 @GET_MODE_CLASS(i32 %520)
  %522 = load i32, i32* @MODE_INT, align 4
  %523 = icmp eq i32 %521, %522
  br i1 %523, label %524, label %535

524:                                              ; preds = %515
  %525 = load i32, i32* @GT, align 4
  %526 = load i32, i32* %11, align 4
  %527 = load i32, i32* @ccp_jump, align 4
  %528 = call i32 @can_compare_p(i32 %525, i32 %526, i32 %527)
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %535, label %530

530:                                              ; preds = %524
  %531 = load i32, i32* %4, align 4
  %532 = load i64, i64* %5, align 8
  %533 = load i64, i64* %6, align 8
  %534 = call i32 @do_jump_by_parts_greater(i32 %531, i32 0, i64 %532, i64 %533)
  br label %542

535:                                              ; preds = %524, %515
  %536 = load i32, i32* %4, align 4
  %537 = load i32, i32* @GT, align 4
  %538 = load i32, i32* @GTU, align 4
  %539 = load i64, i64* %5, align 8
  %540 = load i64, i64* %6, align 8
  %541 = call i32 @do_compare_and_jump(i32 %536, i32 %537, i32 %538, i64 %539, i64 %540)
  br label %542

542:                                              ; preds = %535, %530
  br label %823

543:                                              ; preds = %3
  %544 = load i32, i32* %4, align 4
  %545 = call i32 @TREE_OPERAND(i32 %544, i32 0)
  %546 = call i32 @TREE_TYPE(i32 %545)
  %547 = call i32 @TYPE_MODE(i32 %546)
  store i32 %547, i32* %11, align 4
  %548 = load i32, i32* %11, align 4
  %549 = call i32 @GET_MODE_CLASS(i32 %548)
  %550 = load i32, i32* @MODE_INT, align 4
  %551 = icmp eq i32 %549, %550
  br i1 %551, label %552, label %563

552:                                              ; preds = %543
  %553 = load i32, i32* @GE, align 4
  %554 = load i32, i32* %11, align 4
  %555 = load i32, i32* @ccp_jump, align 4
  %556 = call i32 @can_compare_p(i32 %553, i32 %554, i32 %555)
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %563, label %558

558:                                              ; preds = %552
  %559 = load i32, i32* %4, align 4
  %560 = load i64, i64* %6, align 8
  %561 = load i64, i64* %5, align 8
  %562 = call i32 @do_jump_by_parts_greater(i32 %559, i32 1, i64 %560, i64 %561)
  br label %570

563:                                              ; preds = %552, %543
  %564 = load i32, i32* %4, align 4
  %565 = load i32, i32* @GE, align 4
  %566 = load i32, i32* @GEU, align 4
  %567 = load i64, i64* %5, align 8
  %568 = load i64, i64* %6, align 8
  %569 = call i32 @do_compare_and_jump(i32 %564, i32 %565, i32 %566, i64 %567, i64 %568)
  br label %570

570:                                              ; preds = %563, %558
  br label %823

571:                                              ; preds = %3, %3
  %572 = load i32, i32* %7, align 4
  %573 = icmp eq i32 %572, 128
  br i1 %573, label %574, label %577

574:                                              ; preds = %571
  %575 = load i32, i32* @UNORDERED, align 4
  store i32 %575, i32* %30, align 4
  %576 = load i32, i32* @ORDERED, align 4
  store i32 %576, i32* %31, align 4
  br label %580

577:                                              ; preds = %571
  %578 = load i32, i32* @ORDERED, align 4
  store i32 %578, i32* %30, align 4
  %579 = load i32, i32* @UNORDERED, align 4
  store i32 %579, i32* %31, align 4
  br label %580

580:                                              ; preds = %577, %574
  %581 = load i32, i32* %4, align 4
  %582 = call i32 @TREE_OPERAND(i32 %581, i32 0)
  %583 = call i32 @TREE_TYPE(i32 %582)
  %584 = call i32 @TYPE_MODE(i32 %583)
  store i32 %584, i32* %11, align 4
  store i32 0, i32* %32, align 4
  %585 = load i32, i32* %30, align 4
  %586 = load i32, i32* %11, align 4
  %587 = load i32, i32* @ccp_jump, align 4
  %588 = call i32 @can_compare_p(i32 %585, i32 %586, i32 %587)
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %601, label %590

590:                                              ; preds = %580
  %591 = load i32, i32* %31, align 4
  %592 = load i32, i32* %11, align 4
  %593 = load i32, i32* @ccp_jump, align 4
  %594 = call i32 @can_compare_p(i32 %591, i32 %592, i32 %593)
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %600, label %596

596:                                              ; preds = %590
  %597 = load i32, i32* %31, align 4
  %598 = load i32, i32* @UNORDERED, align 4
  %599 = icmp eq i32 %597, %598
  br i1 %599, label %600, label %601

600:                                              ; preds = %596, %590
  store i32 1, i32* %32, align 4
  br label %601

601:                                              ; preds = %600, %596, %580
  %602 = load i32, i32* %32, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %611, label %604

604:                                              ; preds = %601
  %605 = load i32, i32* %4, align 4
  %606 = load i32, i32* %30, align 4
  %607 = load i32, i32* %30, align 4
  %608 = load i64, i64* %5, align 8
  %609 = load i64, i64* %6, align 8
  %610 = call i32 @do_compare_and_jump(i32 %605, i32 %606, i32 %607, i64 %608, i64 %609)
  br label %618

611:                                              ; preds = %601
  %612 = load i32, i32* %4, align 4
  %613 = load i32, i32* %31, align 4
  %614 = load i32, i32* %31, align 4
  %615 = load i64, i64* %6, align 8
  %616 = load i64, i64* %5, align 8
  %617 = call i32 @do_compare_and_jump(i32 %612, i32 %613, i32 %614, i64 %615, i64 %616)
  br label %618

618:                                              ; preds = %611, %604
  br label %823

619:                                              ; preds = %3
  %620 = load i32, i32* @UNLT, align 4
  store i32 %620, i32* %33, align 4
  store i32 128, i32* %34, align 4
  store i32 146, i32* %35, align 4
  br label %631

621:                                              ; preds = %3
  %622 = load i32, i32* @UNLE, align 4
  store i32 %622, i32* %33, align 4
  store i32 128, i32* %34, align 4
  store i32 149, i32* %35, align 4
  br label %631

623:                                              ; preds = %3
  %624 = load i32, i32* @UNGT, align 4
  store i32 %624, i32* %33, align 4
  store i32 128, i32* %34, align 4
  store i32 151, i32* %35, align 4
  br label %631

625:                                              ; preds = %3
  %626 = load i32, i32* @UNGE, align 4
  store i32 %626, i32* %33, align 4
  store i32 128, i32* %34, align 4
  store i32 152, i32* %35, align 4
  br label %631

627:                                              ; preds = %3
  %628 = load i32, i32* @UNEQ, align 4
  store i32 %628, i32* %33, align 4
  store i32 128, i32* %34, align 4
  store i32 154, i32* %35, align 4
  br label %631

629:                                              ; preds = %3
  %630 = load i32, i32* @LTGT, align 4
  store i32 %630, i32* %33, align 4
  store i32 146, i32* %34, align 4
  store i32 151, i32* %35, align 4
  br label %631

631:                                              ; preds = %629, %627, %625, %623, %621, %619
  %632 = load i32, i32* %4, align 4
  %633 = call i32 @TREE_OPERAND(i32 %632, i32 0)
  %634 = call i32 @TREE_TYPE(i32 %633)
  %635 = call i32 @TYPE_MODE(i32 %634)
  store i32 %635, i32* %11, align 4
  %636 = load i32, i32* %33, align 4
  %637 = load i32, i32* %11, align 4
  %638 = load i32, i32* @ccp_jump, align 4
  %639 = call i32 @can_compare_p(i32 %636, i32 %637, i32 %638)
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %648

641:                                              ; preds = %631
  %642 = load i32, i32* %4, align 4
  %643 = load i32, i32* %33, align 4
  %644 = load i32, i32* %33, align 4
  %645 = load i64, i64* %5, align 8
  %646 = load i64, i64* %6, align 8
  %647 = call i32 @do_compare_and_jump(i32 %642, i32 %643, i32 %644, i64 %645, i64 %646)
  br label %677

648:                                              ; preds = %631
  %649 = load i32, i32* %4, align 4
  %650 = call i32 @TREE_OPERAND(i32 %649, i32 0)
  %651 = call i32 @save_expr(i32 %650)
  store i32 %651, i32* %36, align 4
  %652 = load i32, i32* %4, align 4
  %653 = call i32 @TREE_OPERAND(i32 %652, i32 1)
  %654 = call i32 @save_expr(i32 %653)
  store i32 %654, i32* %37, align 4
  %655 = load i64, i64* %6, align 8
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %657, label %659

657:                                              ; preds = %648
  %658 = call i64 (...) @gen_label_rtx()
  store i64 %658, i64* %6, align 8
  store i64 %658, i64* %12, align 8
  br label %659

659:                                              ; preds = %657, %648
  %660 = load i32, i32* %34, align 4
  %661 = load i32, i32* %4, align 4
  %662 = call i32 @TREE_TYPE(i32 %661)
  %663 = load i32, i32* %36, align 4
  %664 = load i32, i32* %37, align 4
  %665 = call i32 @fold_build2(i32 %660, i32 %662, i32 %663, i32 %664)
  store i32 %665, i32* %38, align 4
  %666 = load i32, i32* %35, align 4
  %667 = load i32, i32* %4, align 4
  %668 = call i32 @TREE_TYPE(i32 %667)
  %669 = load i32, i32* %36, align 4
  %670 = load i32, i32* %37, align 4
  %671 = call i32 @fold_build2(i32 %666, i32 %668, i32 %669, i32 %670)
  store i32 %671, i32* %39, align 4
  %672 = load i32, i32* %38, align 4
  %673 = load i64, i64* %6, align 8
  call void @do_jump(i32 %672, i64 0, i64 %673)
  %674 = load i32, i32* %39, align 4
  %675 = load i64, i64* %5, align 8
  %676 = load i64, i64* %6, align 8
  call void @do_jump(i32 %674, i64 %675, i64 %676)
  br label %677

677:                                              ; preds = %659, %641
  br label %823

678:                                              ; preds = %3
  %679 = load i32, i32* @BRANCH_COST, align 4
  %680 = icmp sge i32 %679, 4
  br i1 %680, label %686, label %681

681:                                              ; preds = %678
  %682 = load i32, i32* %4, align 4
  %683 = call i32 @TREE_OPERAND(i32 %682, i32 1)
  %684 = call i32 @TREE_SIDE_EFFECTS(i32 %683)
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %687

686:                                              ; preds = %681, %678
  br label %784

687:                                              ; preds = %681
  %688 = load i64, i64* %5, align 8
  %689 = load i64, i64* @NULL_RTX, align 8
  %690 = icmp eq i64 %688, %689
  br i1 %690, label %691, label %701

691:                                              ; preds = %687
  %692 = call i64 (...) @gen_label_rtx()
  store i64 %692, i64* %12, align 8
  %693 = load i32, i32* %4, align 4
  %694 = call i32 @TREE_OPERAND(i32 %693, i32 0)
  %695 = load i64, i64* %12, align 8
  %696 = load i64, i64* @NULL_RTX, align 8
  call void @do_jump(i32 %694, i64 %695, i64 %696)
  %697 = load i32, i32* %4, align 4
  %698 = call i32 @TREE_OPERAND(i32 %697, i32 1)
  %699 = load i64, i64* @NULL_RTX, align 8
  %700 = load i64, i64* %6, align 8
  call void @do_jump(i32 %698, i64 %699, i64 %700)
  br label %710

701:                                              ; preds = %687
  %702 = load i32, i32* %4, align 4
  %703 = call i32 @TREE_OPERAND(i32 %702, i32 0)
  %704 = load i64, i64* %5, align 8
  %705 = load i64, i64* @NULL_RTX, align 8
  call void @do_jump(i32 %703, i64 %704, i64 %705)
  %706 = load i32, i32* %4, align 4
  %707 = call i32 @TREE_OPERAND(i32 %706, i32 1)
  %708 = load i64, i64* %5, align 8
  %709 = load i64, i64* %6, align 8
  call void @do_jump(i32 %707, i64 %708, i64 %709)
  br label %710

710:                                              ; preds = %701, %691
  br label %823

711:                                              ; preds = %3
  %712 = load i32, i32* @BRANCH_COST, align 4
  %713 = icmp sge i32 %712, 4
  br i1 %713, label %719, label %714

714:                                              ; preds = %711
  %715 = load i32, i32* %4, align 4
  %716 = call i32 @TREE_OPERAND(i32 %715, i32 1)
  %717 = call i32 @TREE_SIDE_EFFECTS(i32 %716)
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %720

719:                                              ; preds = %714, %711
  br label %784

720:                                              ; preds = %714
  %721 = load i64, i64* %6, align 8
  %722 = load i64, i64* @NULL_RTX, align 8
  %723 = icmp eq i64 %721, %722
  br i1 %723, label %724, label %734

724:                                              ; preds = %720
  %725 = call i64 (...) @gen_label_rtx()
  store i64 %725, i64* %12, align 8
  %726 = load i32, i32* %4, align 4
  %727 = call i32 @TREE_OPERAND(i32 %726, i32 0)
  %728 = load i64, i64* @NULL_RTX, align 8
  %729 = load i64, i64* %12, align 8
  call void @do_jump(i32 %727, i64 %728, i64 %729)
  %730 = load i32, i32* %4, align 4
  %731 = call i32 @TREE_OPERAND(i32 %730, i32 1)
  %732 = load i64, i64* %5, align 8
  %733 = load i64, i64* @NULL_RTX, align 8
  call void @do_jump(i32 %731, i64 %732, i64 %733)
  br label %743

734:                                              ; preds = %720
  %735 = load i32, i32* %4, align 4
  %736 = call i32 @TREE_OPERAND(i32 %735, i32 0)
  %737 = load i64, i64* @NULL_RTX, align 8
  %738 = load i64, i64* %6, align 8
  call void @do_jump(i32 %736, i64 %737, i64 %738)
  %739 = load i32, i32* %4, align 4
  %740 = call i32 @TREE_OPERAND(i32 %739, i32 1)
  %741 = load i64, i64* %5, align 8
  %742 = load i64, i64* %6, align 8
  call void @do_jump(i32 %740, i64 %741, i64 %742)
  br label %743

743:                                              ; preds = %734, %724
  br label %823

744:                                              ; preds = %3
  %745 = load i32, i32* %4, align 4
  %746 = call i32 @get_callee_fndecl(i32 %745)
  store i32 %746, i32* %40, align 4
  %747 = load i32, i32* %4, align 4
  %748 = call i32 @TREE_OPERAND(i32 %747, i32 1)
  store i32 %748, i32* %41, align 4
  %749 = load i32, i32* %40, align 4
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %751, label %782

751:                                              ; preds = %744
  %752 = load i32, i32* %40, align 4
  %753 = call i32 @DECL_BUILT_IN_CLASS(i32 %752)
  %754 = load i32, i32* @BUILT_IN_NORMAL, align 4
  %755 = icmp eq i32 %753, %754
  br i1 %755, label %756, label %782

756:                                              ; preds = %751
  %757 = load i32, i32* %40, align 4
  %758 = call i32 @DECL_FUNCTION_CODE(i32 %757)
  %759 = load i32, i32* @BUILT_IN_EXPECT, align 4
  %760 = icmp eq i32 %758, %759
  br i1 %760, label %761, label %782

761:                                              ; preds = %756
  %762 = load i32, i32* %41, align 4
  %763 = load i32, i32* @NULL_TREE, align 4
  %764 = icmp ne i32 %762, %763
  br i1 %764, label %765, label %782

765:                                              ; preds = %761
  %766 = load i32, i32* %41, align 4
  %767 = call i32 @TREE_CHAIN(i32 %766)
  %768 = load i32, i32* @NULL_TREE, align 4
  %769 = icmp ne i32 %767, %768
  br i1 %769, label %770, label %782

770:                                              ; preds = %765
  %771 = load i32, i32* %4, align 4
  %772 = load i64, i64* %5, align 8
  %773 = load i64, i64* %6, align 8
  %774 = call i64 @expand_builtin_expect_jump(i32 %771, i64 %772, i64 %773)
  store i64 %774, i64* %42, align 8
  %775 = load i64, i64* %42, align 8
  %776 = load i64, i64* @NULL_RTX, align 8
  %777 = icmp ne i64 %775, %776
  br i1 %777, label %778, label %781

778:                                              ; preds = %770
  %779 = load i64, i64* %42, align 8
  %780 = call i32 @emit_insn(i64 %779)
  br label %830

781:                                              ; preds = %770
  br label %782

782:                                              ; preds = %781, %765, %761, %756, %751, %744
  br label %783

783:                                              ; preds = %3, %782
  br label %784

784:                                              ; preds = %783, %719, %686, %342, %259, %94, %83
  %785 = load i32, i32* %4, align 4
  %786 = call i64 @expand_normal(i32 %785)
  store i64 %786, i64* %8, align 8
  %787 = call i32 (...) @do_pending_stack_adjust()
  %788 = load i64, i64* %8, align 8
  %789 = call i32 @GET_CODE(i64 %788)
  %790 = load i32, i32* @SUBREG, align 4
  %791 = icmp eq i32 %789, %790
  br i1 %791, label %792, label %808

792:                                              ; preds = %784
  %793 = load i64, i64* %8, align 8
  %794 = call i32 @SUBREG_PROMOTED_VAR_P(i64 %793)
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %796, label %804

796:                                              ; preds = %792
  %797 = load i64, i64* %8, align 8
  %798 = call i64 @XEXP(i64 %797, i32 0)
  %799 = call i32 @REG_P(i64 %798)
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %801, label %804

801:                                              ; preds = %796
  %802 = load i64, i64* %8, align 8
  %803 = call i64 @XEXP(i64 %802, i32 0)
  store i64 %803, i64* %8, align 8
  br label %807

804:                                              ; preds = %796, %792
  %805 = load i64, i64* %8, align 8
  %806 = call i64 @copy_to_reg(i64 %805)
  store i64 %806, i64* %8, align 8
  br label %807

807:                                              ; preds = %804, %801
  br label %808

808:                                              ; preds = %807, %784
  %809 = load i64, i64* %8, align 8
  %810 = load i64, i64* %8, align 8
  %811 = call i32 @GET_MODE(i64 %810)
  %812 = call i32 @CONST0_RTX(i32 %811)
  %813 = load i32, i32* @NE, align 4
  %814 = load i32, i32* %4, align 4
  %815 = call i32 @TREE_TYPE(i32 %814)
  %816 = call i32 @TYPE_UNSIGNED(i32 %815)
  %817 = load i64, i64* %8, align 8
  %818 = call i32 @GET_MODE(i64 %817)
  %819 = load i64, i64* @NULL_RTX, align 8
  %820 = load i64, i64* %5, align 8
  %821 = load i64, i64* %6, align 8
  %822 = call i32 @do_compare_rtx_and_jump(i64 %809, i32 %812, i32 %813, i32 %816, i32 %818, i64 %819, i64 %820, i64 %821)
  br label %823

823:                                              ; preds = %808, %743, %710, %677, %618, %570, %542, %514, %486, %458, %396, %336, %284, %260, %253, %189, %96, %62, %46
  %824 = load i64, i64* %12, align 8
  %825 = icmp ne i64 %824, 0
  br i1 %825, label %826, label %830

826:                                              ; preds = %823
  %827 = call i32 (...) @do_pending_stack_adjust()
  %828 = load i64, i64* %12, align 8
  %829 = call i32 @emit_label(i64 %828)
  br label %830

830:                                              ; preds = %778, %826, %823
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @emit_jump(i64) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @integer_onep(i32) #1

declare dso_local i32 @compare_tree_int(i32, i32) #1

declare dso_local i32 @prefer_and_bit_test(i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst_type(i32, i32) #1

declare dso_local i32 @tree_floor_log2(i32) #1

declare dso_local i32 @mode_for_size(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @do_pending_stack_adjust(...) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @get_inner_reference(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @can_compare_p(i32, i32, i32) #1

declare dso_local i32 @do_jump_by_parts_equality(i32, i64, i64) #1

declare dso_local i32 @do_compare_and_jump(i32, i32, i32, i64, i64) #1

declare dso_local i32 @do_jump_by_parts_greater(i32, i32, i64, i64) #1

declare dso_local i32 @save_expr(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @get_callee_fndecl(i32) #1

declare dso_local i32 @DECL_BUILT_IN_CLASS(i32) #1

declare dso_local i32 @DECL_FUNCTION_CODE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @expand_builtin_expect_jump(i32, i64, i64) #1

declare dso_local i32 @emit_insn(i64) #1

declare dso_local i64 @expand_normal(i32) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @SUBREG_PROMOTED_VAR_P(i64) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @copy_to_reg(i64) #1

declare dso_local i32 @do_compare_rtx_and_jump(i64, i32, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
