; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_register_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_register_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@cfun_frame_layout = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@global_regs = common dso_local global i32* null, align 8
@fixed_regs = common dso_local global i32* null, align 8
@frame_pointer_needed = common dso_local global i64 0, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_8__* null, align 8
@BASE_REGNUM = common dso_local global i64 0, align 8
@current_function_is_leaf = common dso_local global i32 0, align 4
@TARGET_TPF_PROFILING = common dso_local global i64 0, align 8
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@current_function_stdarg = common dso_local global i64 0, align 8
@RETURN_REGNUM = common dso_local global i64 0, align 8
@cfun_save_high_fprs_p = common dso_local global i64 0, align 8
@current_function_calls_alloca = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i64 0, align 8
@current_function_args_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GP_ARG_NUM_REG = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@FP_ARG_NUM_REG = common dso_local global i32 0, align 4
@TARGET_PACKED_STACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @s390_register_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_register_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 7), align 8
  %9 = load i64, i64* @TARGET_64BIT, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  store i32 24, i32* %3, align 4
  br label %12

12:                                               ; preds = %36, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i32*, i32** @regs_ever_live, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load i32*, i32** @global_regs, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, 16
  %32 = call i32 @cfun_set_fpr_bit(i32 %31)
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 7), align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 7), align 8
  br label %35

35:                                               ; preds = %29, %22, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %12

39:                                               ; preds = %12
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @s390_regs_ever_clobbered(i32* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %75, %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %78

46:                                               ; preds = %43
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load i32*, i32** @global_regs, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %53
  %61 = load i32*, i32** @fixed_regs, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %60, %53, %46
  %69 = phi i1 [ false, %53 ], [ false, %46 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %43

78:                                               ; preds = %43
  %79 = load i64, i64* @frame_pointer_needed, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32*, i32** %2, align 8
  %83 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i64, i64* @flag_pic, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32*, i32** @regs_ever_live, align 8
  %90 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %2, align 8
  %94 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %88, %85
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cfun, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cfun, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @REGNO(i64 %110)
  %112 = load i64, i64* @BASE_REGNUM, align 8
  %113 = icmp eq i64 %111, %112
  br label %114

114:                                              ; preds = %105, %98
  %115 = phi i1 [ false, %98 ], [ %113, %105 ]
  %116 = zext i1 %115 to i32
  %117 = load i32*, i32** %2, align 8
  %118 = load i64, i64* @BASE_REGNUM, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @current_function_is_leaf, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %114
  %125 = load i64, i64* @TARGET_TPF_PROFILING, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %124
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cfun, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %127
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 6), align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* @current_function_calls_eh_return, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i64, i64* @current_function_stdarg, align 8
  %142 = icmp ne i64 %141, 0
  br label %143

143:                                              ; preds = %140, %137, %134, %127, %124, %114
  %144 = phi i1 [ true, %137 ], [ true, %134 ], [ true, %127 ], [ true, %124 ], [ true, %114 ], [ %142, %140 ]
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %2, align 8
  %147 = load i64, i64* @RETURN_REGNUM, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %145
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @current_function_is_leaf, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %143
  %154 = load i64, i64* @TARGET_TPF_PROFILING, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* @cfun_save_high_fprs_p, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %156
  %160 = call i64 (...) @get_frame_size()
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %159
  %163 = load i64, i64* @current_function_calls_alloca, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i64, i64* @current_function_stdarg, align 8
  %167 = icmp ne i64 %166, 0
  br label %168

168:                                              ; preds = %165, %162, %159, %156, %153, %143
  %169 = phi i1 [ true, %162 ], [ true, %159 ], [ true, %156 ], [ true, %153 ], [ true, %143 ], [ %167, %165 ]
  %170 = zext i1 %169 to i32
  %171 = load i32*, i32** %2, align 8
  %172 = load i64, i64* @STACK_POINTER_REGNUM, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 4
  store i32 6, i32* %3, align 4
  br label %176

176:                                              ; preds = %195, %168
  %177 = load i32, i32* %3, align 4
  %178 = icmp slt i32 %177, 16
  br i1 %178, label %179, label %198

179:                                              ; preds = %176
  %180 = load i32*, i32** @regs_ever_live, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %179
  %187 = load i32*, i32** %2, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %186, %179
  br label %198

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %3, align 4
  br label %176

198:                                              ; preds = %193, %176
  store i32 15, i32* %4, align 4
  br label %199

199:                                              ; preds = %219, %198
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* %3, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %222

203:                                              ; preds = %199
  %204 = load i32*, i32** @regs_ever_live, align 8
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %203
  %211 = load i32*, i32** %2, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210, %203
  br label %222

218:                                              ; preds = %210
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %4, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %4, align 4
  br label %199

222:                                              ; preds = %217, %199
  %223 = load i32, i32* %3, align 4
  %224 = icmp eq i32 %223, 16
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 1), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 3), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 4), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 5), align 4
  br label %277

226:                                              ; preds = %222
  %227 = load i32, i32* %3, align 4
  store i32 %227, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 0), align 8
  %228 = load i32, i32* %4, align 4
  store i32 %228, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 1), align 4
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 0), align 8
  store i32 %229, i32* %3, align 4
  br label %230

230:                                              ; preds = %244, %226
  %231 = load i32, i32* %3, align 4
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 1), align 4
  %233 = add nsw i32 %232, 1
  %234 = icmp slt i32 %231, %233
  br i1 %234, label %235, label %247

235:                                              ; preds = %230
  %236 = load i32*, i32** %2, align 8
  %237 = load i32, i32* %3, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %247

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %3, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %3, align 4
  br label %230

247:                                              ; preds = %242, %230
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 1), align 4
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %262, %247
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* %3, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %265

253:                                              ; preds = %249
  %254 = load i32*, i32** %2, align 8
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  br label %265

261:                                              ; preds = %253
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %4, align 4
  br label %249

265:                                              ; preds = %260, %249
  %266 = load i32, i32* %3, align 4
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 1), align 4
  %268 = add nsw i32 %267, 1
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 3), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 4), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 5), align 4
  br label %276

271:                                              ; preds = %265
  %272 = load i32, i32* %3, align 4
  store i32 %272, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 2), align 8
  %273 = load i32, i32* %3, align 4
  store i32 %273, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 3), align 4
  %274 = load i32, i32* %4, align 4
  store i32 %274, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 4), align 8
  %275 = load i32, i32* %4, align 4
  store i32 %275, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 5), align 4
  br label %276

276:                                              ; preds = %271, %270
  br label %277

277:                                              ; preds = %276, %225
  %278 = load i64, i64* @current_function_stdarg, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %373

280:                                              ; preds = %277
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cfun, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %331

285:                                              ; preds = %280
  %286 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_function_args_info, i32 0, i32 0), align 4
  %287 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %331

289:                                              ; preds = %285
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_function_args_info, i32 0, i32 0), align 4
  store i32 %290, i32* %5, align 4
  %291 = load i32, i32* %5, align 4
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cfun, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %291, %294
  store i32 %295, i32* %6, align 4
  %296 = load i32, i32* %6, align 4
  %297 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %298 = icmp sgt i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %289
  %300 = load i32, i32* @GP_ARG_NUM_REG, align 4
  store i32 %300, i32* %6, align 4
  br label %301

301:                                              ; preds = %299, %289
  %302 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 2), align 8
  %303 = icmp eq i32 %302, -1
  br i1 %303, label %309, label %304

304:                                              ; preds = %301
  %305 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 2), align 8
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 2, %306
  %308 = icmp sgt i32 %305, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %304, %301
  %310 = load i32, i32* %5, align 4
  %311 = add nsw i32 2, %310
  store i32 %311, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 2), align 8
  %312 = load i32, i32* %5, align 4
  %313 = add nsw i32 2, %312
  store i32 %313, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 0), align 8
  br label %314

314:                                              ; preds = %309, %304
  %315 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 4), align 8
  %316 = icmp eq i32 %315, -1
  br i1 %316, label %323, label %317

317:                                              ; preds = %314
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 4), align 8
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 2, %319
  %321 = sub nsw i32 %320, 1
  %322 = icmp slt i32 %318, %321
  br i1 %322, label %323, label %330

323:                                              ; preds = %317, %314
  %324 = load i32, i32* %6, align 4
  %325 = add nsw i32 2, %324
  %326 = sub nsw i32 %325, 1
  store i32 %326, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 4), align 8
  %327 = load i32, i32* %6, align 4
  %328 = add nsw i32 2, %327
  %329 = sub nsw i32 %328, 1
  store i32 %329, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfun_frame_layout, i32 0, i32 1), align 4
  br label %330

330:                                              ; preds = %323, %317
  br label %331

331:                                              ; preds = %330, %285, %280
  %332 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %372

334:                                              ; preds = %331
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cfun, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %372

339:                                              ; preds = %334
  %340 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_function_args_info, i32 0, i32 1), align 4
  %341 = load i32, i32* @FP_ARG_NUM_REG, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %372

343:                                              ; preds = %339
  %344 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_function_args_info, i32 0, i32 1), align 4
  store i32 %344, i32* %7, align 4
  %345 = load i32, i32* %7, align 4
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cfun, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %345, %348
  store i32 %349, i32* %8, align 4
  %350 = load i32, i32* %8, align 4
  %351 = load i32, i32* @FP_ARG_NUM_REG, align 4
  %352 = icmp sgt i32 %350, %351
  br i1 %352, label %353, label %355

353:                                              ; preds = %343
  %354 = load i32, i32* @FP_ARG_NUM_REG, align 4
  store i32 %354, i32* %8, align 4
  br label %355

355:                                              ; preds = %353, %343
  %356 = load i64, i64* @TARGET_PACKED_STACK, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  store i32 0, i32* %7, align 4
  br label %359

359:                                              ; preds = %358, %355
  %360 = load i32, i32* %7, align 4
  store i32 %360, i32* %3, align 4
  br label %361

361:                                              ; preds = %368, %359
  %362 = load i32, i32* %3, align 4
  %363 = load i32, i32* %8, align 4
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %365, label %371

365:                                              ; preds = %361
  %366 = load i32, i32* %3, align 4
  %367 = call i32 @cfun_set_fpr_bit(i32 %366)
  br label %368

368:                                              ; preds = %365
  %369 = load i32, i32* %3, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %3, align 4
  br label %361

371:                                              ; preds = %361
  br label %372

372:                                              ; preds = %371, %339, %334, %331
  br label %373

373:                                              ; preds = %372, %277
  %374 = load i64, i64* @TARGET_64BIT, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %404, label %376

376:                                              ; preds = %373
  store i32 2, i32* %3, align 4
  br label %377

377:                                              ; preds = %400, %376
  %378 = load i32, i32* %3, align 4
  %379 = icmp slt i32 %378, 4
  br i1 %379, label %380, label %403

380:                                              ; preds = %377
  %381 = load i32*, i32** @regs_ever_live, align 8
  %382 = load i32, i32* %3, align 4
  %383 = add nsw i32 %382, 16
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %381, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %380
  %389 = load i32*, i32** @global_regs, align 8
  %390 = load i32, i32* %3, align 4
  %391 = add nsw i32 %390, 16
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %388
  %397 = load i32, i32* %3, align 4
  %398 = call i32 @cfun_set_fpr_bit(i32 %397)
  br label %399

399:                                              ; preds = %396, %388, %380
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %3, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %3, align 4
  br label %377

403:                                              ; preds = %377
  br label %404

404:                                              ; preds = %403, %373
  ret void
}

declare dso_local i32 @cfun_set_fpr_bit(i32) #1

declare dso_local i32 @s390_regs_ever_clobbered(i32*) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @get_frame_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
