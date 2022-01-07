; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_s_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32* }

@flag_mri = common dso_local global i64 0, align 8
@flag_m68k_mri = common dso_local global i64 0, align 8
@now_seg = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@abs_section_offset = common dso_local global i32 0, align 4
@line_label = common dso_local global i32* null, align 8
@mri_common_symbol = common dso_local global i32* null, align 8
@O_symbol = common dso_local global i64 0, align 8
@frag_now = common dso_local global i32 0, align 4
@input_line_pointer = common dso_local global i8* null, align 8
@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"unsupported variable size or fill value\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c".space repeat count is zero, ignored\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c".space repeat count is negative, ignored\00", align 1
@need_pass_2 = common dso_local global i32 0, align 4
@rs_fill = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"space allocation too complex in absolute section\00", align 1
@text_section = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"space allocation too complex in common section\00", align 1
@rs_space = common dso_local global i32 0, align 4
@mri_pending_align = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_space(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8 0, i8* %7, align 1
  %13 = load i64, i64* @flag_mri, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i8* @mri_comment_field(i8* %7)
  store i8* %16, i8** %6, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i64, i64* @flag_m68k_mri, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %95

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %95

23:                                               ; preds = %20
  %24 = load i64, i64* @now_seg, align 8
  %25 = load i64, i64* @absolute_section, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32, i32* @abs_section_offset, align 4
  %29 = and i32 %28, 1
  %30 = load i32, i32* @abs_section_offset, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* @abs_section_offset, align 4
  %32 = load i32*, i32** @line_label, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32*, i32** @line_label, align 8
  %36 = load i32, i32* @abs_section_offset, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 @S_SET_VALUE(i32* %35, i64 %37)
  br label %39

39:                                               ; preds = %34, %27
  br label %94

40:                                               ; preds = %23
  %41 = load i32*, i32** @mri_common_symbol, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %81

43:                                               ; preds = %40
  %44 = load i32*, i32** @mri_common_symbol, align 8
  %45 = call i64 @S_GET_VALUE(i32* %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %43
  %51 = load i32*, i32** @mri_common_symbol, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = call i32 @S_SET_VALUE(i32* %51, i64 %54)
  %56 = load i32*, i32** @line_label, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %50
  %59 = load i32*, i32** @line_label, align 8
  %60 = call %struct.TYPE_7__* @symbol_get_value_expression(i32* %59)
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %10, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @O_symbol, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @know(i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** @mri_common_symbol, align 8
  %72 = icmp eq i32* %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @know(i32 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %58, %50
  br label %80

80:                                               ; preds = %79, %43
  br label %93

81:                                               ; preds = %40
  %82 = call i32 @do_align(i32 1, i8* null, i32 0, i32 0)
  %83 = load i32*, i32** @line_label, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32*, i32** @line_label, align 8
  %87 = load i32, i32* @frag_now, align 4
  %88 = call i32 @symbol_set_frag(i32* %86, i32 %87)
  %89 = load i32*, i32** @line_label, align 8
  %90 = call i64 (...) @frag_now_fix()
  %91 = call i32 @S_SET_VALUE(i32* %89, i64 %90)
  br label %92

92:                                               ; preds = %85, %81
  br label %93

93:                                               ; preds = %92, %80
  br label %94

94:                                               ; preds = %93, %39
  br label %95

95:                                               ; preds = %94, %20, %17
  %96 = load i32, i32* %2, align 4
  store i32 %96, i32* %8, align 4
  %97 = call i32 @expression(%struct.TYPE_7__* %3)
  %98 = call i32 (...) @SKIP_WHITESPACE()
  %99 = load i8*, i8** @input_line_pointer, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 44
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i8*, i8** @input_line_pointer, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** @input_line_pointer, align 8
  %106 = call i32 @expression(%struct.TYPE_7__* %4)
  br label %111

107:                                              ; preds = %95
  %108 = load i64, i64* @O_constant, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i64 %108, i64* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %103
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @O_constant, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %134, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %118, -128
  br i1 %119, label %134, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 255
  br i1 %123, label %134, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %2, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %166

127:                                              ; preds = %124
  %128 = load i32, i32* %2, align 4
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %166

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %130, %120, %116, %111
  %135 = call i32 @resolve_expression(%struct.TYPE_7__* %3)
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @O_constant, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %142 = call i32 @as_bad(i32 %141)
  br label %165

143:                                              ; preds = %134
  %144 = load i32, i32* %2, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 1, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %143
  %148 = load i32, i32* %2, align 4
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %148, %150
  store i32 %151, i32* %8, align 4
  store i64 0, i64* %11, align 8
  br label %152

152:                                              ; preds = %161, %147
  %153 = load i64, i64* %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %153, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @emit_expr(%struct.TYPE_7__* %4, i32 %159)
  br label %161

161:                                              ; preds = %158
  %162 = load i64, i64* %11, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %11, align 8
  br label %152

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164, %140
  br label %270

166:                                              ; preds = %130, %127, %124
  %167 = load i64, i64* @now_seg, align 8
  %168 = load i64, i64* @absolute_section, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load i32*, i32** @mri_common_symbol, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %170, %166
  %174 = call i32 @resolve_expression(%struct.TYPE_7__* %3)
  br label %175

175:                                              ; preds = %173, %170
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @O_constant, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %238

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %12, align 8
  %184 = load i32, i32* %2, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load i32, i32* %2, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %12, align 8
  %190 = mul nsw i64 %189, %188
  store i64 %190, i64* %12, align 8
  br label %191

191:                                              ; preds = %186, %180
  %192 = load i64, i64* %12, align 8
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %8, align 4
  %194 = load i64, i64* %12, align 8
  %195 = icmp sle i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %191
  %197 = load i64, i64* @flag_mri, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %201 = call i32 @as_warn(i32 %200)
  br label %209

202:                                              ; preds = %196
  %203 = load i64, i64* %12, align 8
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %207 = call i32 @as_warn(i32 %206)
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %199
  br label %271

210:                                              ; preds = %191
  %211 = load i64, i64* @now_seg, align 8
  %212 = load i64, i64* @absolute_section, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  %215 = load i64, i64* %12, align 8
  %216 = load i32, i32* @abs_section_offset, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* @abs_section_offset, align 4
  br label %271

220:                                              ; preds = %210
  %221 = load i32*, i32** @mri_common_symbol, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load i32*, i32** @mri_common_symbol, align 8
  %225 = load i32*, i32** @mri_common_symbol, align 8
  %226 = call i64 @S_GET_VALUE(i32* %225)
  %227 = load i64, i64* %12, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @S_SET_VALUE(i32* %224, i64 %228)
  br label %271

230:                                              ; preds = %220
  %231 = load i32, i32* @need_pass_2, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* @rs_fill, align 4
  %235 = load i64, i64* %12, align 8
  %236 = call i8* @frag_var(i32 %234, i32 1, i32 1, i32 0, i32* null, i64 %235, i8* null)
  store i8* %236, i8** %5, align 8
  br label %237

237:                                              ; preds = %233, %230
  br label %261

238:                                              ; preds = %175
  %239 = load i64, i64* @now_seg, align 8
  %240 = load i64, i64* @absolute_section, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %244 = call i32 @as_bad(i32 %243)
  %245 = load i32, i32* @text_section, align 4
  %246 = call i32 @subseg_set(i32 %245, i32 0)
  br label %247

247:                                              ; preds = %242, %238
  %248 = load i32*, i32** @mri_common_symbol, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %252 = call i32 @as_bad(i32 %251)
  store i32* null, i32** @mri_common_symbol, align 8
  br label %253

253:                                              ; preds = %250, %247
  %254 = load i32, i32* @need_pass_2, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* @rs_space, align 4
  %258 = call i32* @make_expr_symbol(%struct.TYPE_7__* %3)
  %259 = call i8* @frag_var(i32 %257, i32 1, i32 1, i32 0, i32* %258, i64 0, i8* null)
  store i8* %259, i8** %5, align 8
  br label %260

260:                                              ; preds = %256, %253
  br label %261

261:                                              ; preds = %260, %237
  %262 = load i8*, i8** %5, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = trunc i32 %266 to i8
  %268 = load i8*, i8** %5, align 8
  store i8 %267, i8* %268, align 1
  br label %269

269:                                              ; preds = %264, %261
  br label %270

270:                                              ; preds = %269, %165
  br label %271

271:                                              ; preds = %270, %223, %214, %209
  %272 = load i64, i64* @flag_mri, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load i32, i32* %8, align 4
  %276 = and i32 %275, 1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  store i32 1, i32* @mri_pending_align, align 4
  br label %279

279:                                              ; preds = %278, %274, %271
  %280 = call i32 (...) @demand_empty_rest_of_line()
  %281 = load i64, i64* @flag_mri, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %279
  %284 = load i8*, i8** %6, align 8
  %285 = load i8, i8* %7, align 1
  %286 = call i32 @mri_comment_end(i8* %284, i8 signext %285)
  br label %287

287:                                              ; preds = %283, %279
  ret void
}

declare dso_local i8* @mri_comment_field(i8*) #1

declare dso_local i32 @S_SET_VALUE(i32*, i64) #1

declare dso_local i64 @S_GET_VALUE(i32*) #1

declare dso_local %struct.TYPE_7__* @symbol_get_value_expression(i32*) #1

declare dso_local i32 @know(i32) #1

declare dso_local i32 @do_align(i32, i8*, i32, i32) #1

declare dso_local i32 @symbol_set_frag(i32*, i32) #1

declare dso_local i64 @frag_now_fix(...) #1

declare dso_local i32 @expression(%struct.TYPE_7__*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @resolve_expression(%struct.TYPE_7__*) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @emit_expr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i8* @frag_var(i32, i32, i32, i32, i32*, i64, i8*) #1

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32* @make_expr_symbol(%struct.TYPE_7__*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @mri_comment_end(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
