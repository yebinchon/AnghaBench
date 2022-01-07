; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_compute_frame_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_compute_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@current_frame_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@cfun = common dso_local global %struct.TYPE_7__* null, align 8
@frame_pointer_needed = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"syscall_linkage\00", align 1
@current_function_decl = common dso_local global i32 0, align 4
@current_function_profile = common dso_local global i64 0, align 8
@call_used_regs = common dso_local global i32* null, align 8
@current_function_is_leaf = common dso_local global i64 0, align 8
@AR_PFS_REGNUM = common dso_local global i64 0, align 8
@current_function_calls_setjmp = common dso_local global i64 0, align 8
@AR_UNAT_REGNUM = common dso_local global i64 0, align 8
@AR_LC_REGNUM = common dso_local global i64 0, align 8
@current_function_pretend_args_size = common dso_local global i64 0, align 8
@current_function_outgoing_args_size = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ia64_compute_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_compute_frame_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 11), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %522

16:                                               ; preds = %1
  %17 = call i32 @memset(%struct.TYPE_6__* @current_frame_info, i32 0, i32 120)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @CLEAR_HARD_REG_SET(i32 %18)
  %20 = call i32 @diddle_return_value(i32 (i64, i32*)* @mark_reg_gr_used_mask, i32* null)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfun, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfun, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @mark_reg_gr_used_mask(i64 %32, i32* null)
  br label %34

34:                                               ; preds = %27, %16
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfun, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfun, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @mark_reg_gr_used_mask(i64 %46, i32* null)
  br label %48

48:                                               ; preds = %41, %34
  %49 = call i32 @LOC_REG(i32 78)
  %50 = load i64, i64* @frame_pointer_needed, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = add i32 %49, %53
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %68, %48
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @LOC_REG(i32 0)
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32*, i32** @regs_ever_live, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %71

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, -1
  store i32 %70, i32* %11, align 4
  br label %55

71:                                               ; preds = %66, %55
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @LOC_REG(i32 0)
  %74 = sub i32 %72, %73
  %75 = add i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 0), align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfun, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* @current_function_decl, align 4
  %84 = call i32 @TREE_TYPE(i32 %83)
  %85 = call i32 @TYPE_ATTRIBUTES(i32 %84)
  %86 = call i64 @lookup_attribute(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %71
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 1), align 4
  br label %112

89:                                               ; preds = %82
  %90 = call i32 @IN_REG(i32 7)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %104, %89
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @IN_REG(i32 0)
  %94 = icmp uge i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i32*, i32** @regs_ever_live, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %107

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = add i32 %105, -1
  store i32 %106, i32* %11, align 4
  br label %91

107:                                              ; preds = %102, %91
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @IN_REG(i32 0)
  %110 = sub i32 %108, %109
  %111 = add i32 %110, 1
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 1), align 4
  br label %112

112:                                              ; preds = %107, %88
  %113 = call i32 @OUT_REG(i32 7)
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %127, %112
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @OUT_REG(i32 0)
  %117 = icmp uge i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i32*, i32** @regs_ever_live, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %130

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, -1
  store i32 %129, i32* %11, align 4
  br label %114

130:                                              ; preds = %125, %114
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @OUT_REG(i32 0)
  %133 = sub i32 %131, %132
  %134 = add i32 %133, 1
  store i32 %134, i32* %12, align 4
  %135 = load i64, i64* @current_function_profile, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* %12, align 4
  %139 = call i8* @MAX(i32 %138, i64 1)
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %137, %130
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 17), align 8
  %143 = call i32 @FR_REG(i32 2)
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %172, %141
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @FR_REG(i32 127)
  %147 = icmp ule i32 %145, %146
  br i1 %147, label %148, label %175

148:                                              ; preds = %144
  %149 = load i32*, i32** @regs_ever_live, align 8
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %148
  %156 = load i32*, i32** @call_used_regs, align 8
  %157 = load i32, i32* %11, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %11, align 4
  %165 = zext i32 %164 to i64
  %166 = call i32 @SET_HARD_REG_BIT(i32 %163, i64 %165)
  %167 = load i64, i64* %4, align 8
  %168 = add nsw i64 %167, 16
  store i64 %168, i64* %4, align 8
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %171

171:                                              ; preds = %162, %155, %148
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %11, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %144

175:                                              ; preds = %144
  %176 = call i64 @GR_REG(i32 1)
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %207, %175
  %179 = load i32, i32* %11, align 4
  %180 = zext i32 %179 to i64
  %181 = call i64 @GR_REG(i32 31)
  %182 = icmp ule i64 %180, %181
  br i1 %182, label %183, label %210

183:                                              ; preds = %178
  %184 = load i32*, i32** @regs_ever_live, align 8
  %185 = load i32, i32* %11, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %206

190:                                              ; preds = %183
  %191 = load i32*, i32** @call_used_regs, align 8
  %192 = load i32, i32* %11, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %11, align 4
  %200 = zext i32 %199 to i64
  %201 = call i32 @SET_HARD_REG_BIT(i32 %198, i64 %200)
  %202 = load i64, i64* %4, align 8
  %203 = add nsw i64 %202, 8
  store i64 %203, i64* %4, align 8
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %206

206:                                              ; preds = %197, %190, %183
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %11, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %178

210:                                              ; preds = %178
  %211 = call i64 @BR_REG(i32 1)
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %242, %210
  %214 = load i32, i32* %11, align 4
  %215 = zext i32 %214 to i64
  %216 = call i64 @BR_REG(i32 7)
  %217 = icmp ule i64 %215, %216
  br i1 %217, label %218, label %245

218:                                              ; preds = %213
  %219 = load i32*, i32** @regs_ever_live, align 8
  %220 = load i32, i32* %11, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %218
  %226 = load i32*, i32** @call_used_regs, align 8
  %227 = load i32, i32* %11, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %225
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %11, align 4
  %235 = zext i32 %234 to i64
  %236 = call i32 @SET_HARD_REG_BIT(i32 %233, i64 %235)
  %237 = load i64, i64* %4, align 8
  %238 = add nsw i64 %237, 8
  store i64 %238, i64* %4, align 8
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %8, align 4
  br label %241

241:                                              ; preds = %232, %225, %218
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %11, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %11, align 4
  br label %213

245:                                              ; preds = %213
  %246 = load i64, i64* @frame_pointer_needed, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %245
  %249 = call i8* @find_gr_spill(i32 1)
  %250 = ptrtoint i8* %249 to i32
  store i32 %250, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = call i32 @LOC_REG(i32 79)
  store i32 %254, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  %255 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 0), align 8
  %256 = add i32 %255, 1
  store i32 %256, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 0), align 8
  br label %257

257:                                              ; preds = %253, %248
  br label %258

258:                                              ; preds = %257, %245
  %259 = load i64, i64* @current_function_is_leaf, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %307, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %7, align 4
  %263 = call i64 @BR_REG(i32 0)
  %264 = call i32 @SET_HARD_REG_BIT(i32 %262, i64 %263)
  %265 = call i8* @find_gr_spill(i32 1)
  %266 = ptrtoint i8* %265 to i32
  store i32 %266, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 4), align 8
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 4), align 8
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %261
  %270 = load i64, i64* %5, align 8
  %271 = add nsw i64 %270, 8
  store i64 %271, i64* %5, align 8
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %269, %261
  %275 = load i32, i32* %7, align 4
  %276 = load i64, i64* @AR_PFS_REGNUM, align 8
  %277 = call i32 @SET_HARD_REG_BIT(i32 %275, i64 %276)
  %278 = call i8* @find_gr_spill(i32 1)
  %279 = ptrtoint i8* %278 to i32
  store i32 %279, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 5), align 4
  %280 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 5), align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %274
  %283 = load i64, i64* %5, align 8
  %284 = add nsw i64 %283, 8
  store i64 %284, i64* %5, align 8
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %8, align 4
  br label %287

287:                                              ; preds = %282, %274
  %288 = load i64, i64* @current_function_calls_setjmp, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %293

291:                                              ; preds = %287
  %292 = call i8* @find_gr_spill(i32 1)
  br label %293

293:                                              ; preds = %291, %290
  %294 = phi i8* [ null, %290 ], [ %292, %291 ]
  %295 = ptrtoint i8* %294 to i64
  store i64 %295, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 6), align 8
  %296 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 6), align 8
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %293
  %299 = load i32, i32* %7, align 4
  %300 = call i64 @GR_REG(i32 1)
  %301 = call i32 @SET_HARD_REG_BIT(i32 %299, i64 %300)
  %302 = load i64, i64* %4, align 8
  %303 = add nsw i64 %302, 8
  store i64 %303, i64* %4, align 8
  %304 = load i32, i32* %8, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %8, align 4
  br label %306

306:                                              ; preds = %298, %293
  br label %348

307:                                              ; preds = %258
  %308 = load i32*, i32** @regs_ever_live, align 8
  %309 = call i64 @BR_REG(i32 0)
  %310 = getelementptr inbounds i32, i32* %308, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %327

313:                                              ; preds = %307
  %314 = load i32*, i32** @call_used_regs, align 8
  %315 = call i64 @BR_REG(i32 0)
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %327, label %319

319:                                              ; preds = %313
  %320 = load i32, i32* %7, align 4
  %321 = call i64 @BR_REG(i32 0)
  %322 = call i32 @SET_HARD_REG_BIT(i32 %320, i64 %321)
  %323 = load i64, i64* %5, align 8
  %324 = add nsw i64 %323, 8
  store i64 %324, i64* %5, align 8
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %8, align 4
  br label %327

327:                                              ; preds = %319, %313, %307
  %328 = load i32*, i32** @regs_ever_live, align 8
  %329 = load i64, i64* @AR_PFS_REGNUM, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %347

333:                                              ; preds = %327
  %334 = load i32, i32* %7, align 4
  %335 = load i64, i64* @AR_PFS_REGNUM, align 8
  %336 = call i32 @SET_HARD_REG_BIT(i32 %334, i64 %335)
  %337 = call i8* @find_gr_spill(i32 1)
  %338 = ptrtoint i8* %337 to i32
  store i32 %338, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 5), align 4
  %339 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 5), align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %333
  %342 = load i64, i64* %5, align 8
  %343 = add nsw i64 %342, 8
  store i64 %343, i64* %5, align 8
  %344 = load i32, i32* %8, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %8, align 4
  br label %346

346:                                              ; preds = %341, %333
  br label %347

347:                                              ; preds = %346, %327
  br label %348

348:                                              ; preds = %347, %306
  %349 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %367

351:                                              ; preds = %348
  %352 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 4), align 8
  %353 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  %354 = add i32 %353, 1
  %355 = icmp eq i32 %352, %354
  br i1 %355, label %356, label %367

356:                                              ; preds = %351
  %357 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 5), align 4
  %358 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  %359 = add i32 %358, 2
  %360 = icmp eq i32 %357, %359
  br i1 %360, label %361, label %367

361:                                              ; preds = %356
  %362 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  store i32 %362, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 4), align 8
  %363 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  %364 = add i32 %363, 1
  store i32 %364, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 5), align 4
  %365 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  %366 = add i32 %365, 2
  store i32 %366, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 3), align 4
  br label %367

367:                                              ; preds = %361, %356, %351, %348
  %368 = call i32 @PR_REG(i32 0)
  store i32 %368, i32* %11, align 4
  br label %369

369:                                              ; preds = %389, %367
  %370 = load i32, i32* %11, align 4
  %371 = call i32 @PR_REG(i32 63)
  %372 = icmp ule i32 %370, %371
  br i1 %372, label %373, label %392

373:                                              ; preds = %369
  %374 = load i32*, i32** @regs_ever_live, align 8
  %375 = load i32, i32* %11, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %373
  %381 = load i32*, i32** @call_used_regs, align 8
  %382 = load i32, i32* %11, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %380
  br label %392

388:                                              ; preds = %380, %373
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %11, align 4
  %391 = add i32 %390, 1
  store i32 %391, i32* %11, align 4
  br label %369

392:                                              ; preds = %387, %369
  %393 = load i32, i32* %11, align 4
  %394 = call i32 @PR_REG(i32 63)
  %395 = icmp ule i32 %393, %394
  br i1 %395, label %396, label %425

396:                                              ; preds = %392
  %397 = load i32, i32* %7, align 4
  %398 = call i32 @PR_REG(i32 0)
  %399 = zext i32 %398 to i64
  %400 = call i32 @SET_HARD_REG_BIT(i32 %397, i64 %399)
  %401 = call i8* @find_gr_spill(i32 1)
  %402 = ptrtoint i8* %401 to i64
  store i64 %402, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 7), align 8
  %403 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 7), align 8
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %396
  %406 = load i64, i64* %5, align 8
  %407 = add nsw i64 %406, 8
  store i64 %407, i64* %5, align 8
  %408 = load i32, i32* %8, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %8, align 4
  br label %410

410:                                              ; preds = %405, %396
  %411 = call i32 @PR_REG(i32 0)
  store i32 %411, i32* %11, align 4
  br label %412

412:                                              ; preds = %421, %410
  %413 = load i32, i32* %11, align 4
  %414 = call i32 @PR_REG(i32 63)
  %415 = icmp ule i32 %413, %414
  br i1 %415, label %416, label %424

416:                                              ; preds = %412
  %417 = load i32*, i32** @regs_ever_live, align 8
  %418 = load i32, i32* %11, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  store i32 1, i32* %420, align 4
  br label %421

421:                                              ; preds = %416
  %422 = load i32, i32* %11, align 4
  %423 = add i32 %422, 1
  store i32 %423, i32* %11, align 4
  br label %412

424:                                              ; preds = %412
  br label %425

425:                                              ; preds = %424, %392
  %426 = load i32, i32* %9, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %441, label %428

428:                                              ; preds = %425
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfun, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 0
  %431 = load %struct.TYPE_5__*, %struct.TYPE_5__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %441, label %435

435:                                              ; preds = %428
  %436 = load i32*, i32** @regs_ever_live, align 8
  %437 = load i64, i64* @AR_UNAT_REGNUM, align 8
  %438 = getelementptr inbounds i32, i32* %436, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %461

441:                                              ; preds = %435, %428, %425
  %442 = load i32*, i32** @regs_ever_live, align 8
  %443 = load i64, i64* @AR_UNAT_REGNUM, align 8
  %444 = getelementptr inbounds i32, i32* %442, i64 %443
  store i32 1, i32* %444, align 4
  %445 = load i32, i32* %7, align 4
  %446 = load i64, i64* @AR_UNAT_REGNUM, align 8
  %447 = call i32 @SET_HARD_REG_BIT(i32 %445, i64 %446)
  %448 = load i64, i64* %4, align 8
  %449 = icmp eq i64 %448, 0
  %450 = zext i1 %449 to i32
  %451 = call i8* @find_gr_spill(i32 %450)
  %452 = ptrtoint i8* %451 to i64
  store i64 %452, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 8), align 8
  %453 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 8), align 8
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %441
  %456 = load i64, i64* %5, align 8
  %457 = add nsw i64 %456, 8
  store i64 %457, i64* %5, align 8
  %458 = load i32, i32* %8, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %8, align 4
  br label %460

460:                                              ; preds = %455, %441
  br label %461

461:                                              ; preds = %460, %435
  %462 = load i32*, i32** @regs_ever_live, align 8
  %463 = load i64, i64* @AR_LC_REGNUM, align 8
  %464 = getelementptr inbounds i32, i32* %462, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %484

467:                                              ; preds = %461
  %468 = load i32, i32* %7, align 4
  %469 = load i64, i64* @AR_LC_REGNUM, align 8
  %470 = call i32 @SET_HARD_REG_BIT(i32 %468, i64 %469)
  %471 = load i64, i64* %4, align 8
  %472 = icmp eq i64 %471, 0
  %473 = zext i1 %472 to i32
  %474 = call i8* @find_gr_spill(i32 %473)
  %475 = ptrtoint i8* %474 to i64
  store i64 %475, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 9), align 8
  %476 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 9), align 8
  %477 = icmp eq i64 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %467
  %479 = load i64, i64* %5, align 8
  %480 = add nsw i64 %479, 8
  store i64 %480, i64* %5, align 8
  %481 = load i32, i32* %8, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %8, align 4
  br label %483

483:                                              ; preds = %478, %467
  br label %484

484:                                              ; preds = %483, %461
  %485 = load i32, i32* %10, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %490

487:                                              ; preds = %484
  %488 = load i64, i64* @current_function_pretend_args_size, align 8
  %489 = call i64 @IA64_STACK_ALIGN(i64 %488)
  store i64 %489, i64* %6, align 8
  br label %492

490:                                              ; preds = %484
  %491 = load i64, i64* @current_function_pretend_args_size, align 8
  store i64 %491, i64* %6, align 8
  br label %492

492:                                              ; preds = %490, %487
  %493 = load i64, i64* %4, align 8
  %494 = load i64, i64* %5, align 8
  %495 = add nsw i64 %493, %494
  %496 = load i64, i64* %2, align 8
  %497 = add nsw i64 %495, %496
  %498 = load i64, i64* %6, align 8
  %499 = add nsw i64 %497, %498
  %500 = load i64, i64* @current_function_outgoing_args_size, align 8
  %501 = add nsw i64 %499, %500
  store i64 %501, i64* %3, align 8
  %502 = load i64, i64* %3, align 8
  %503 = call i64 @IA64_STACK_ALIGN(i64 %502)
  store i64 %503, i64* %3, align 8
  %504 = load i64, i64* @current_function_is_leaf, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %511

506:                                              ; preds = %492
  %507 = load i64, i64* %3, align 8
  %508 = sub nsw i64 %507, 16
  %509 = call i8* @MAX(i32 0, i64 %508)
  %510 = ptrtoint i8* %509 to i64
  store i64 %510, i64* %3, align 8
  br label %511

511:                                              ; preds = %506, %492
  %512 = load i64, i64* %3, align 8
  store i64 %512, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 16), align 8
  %513 = load i64, i64* %6, align 8
  %514 = sub nsw i64 %513, 16
  store i64 %514, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 15), align 8
  %515 = load i64, i64* %4, align 8
  store i64 %515, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 14), align 8
  %516 = load i64, i64* %5, align 8
  store i64 %516, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 13), align 8
  %517 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 12), align 8
  %518 = load i32, i32* %7, align 4
  %519 = call i32 @COPY_HARD_REG_SET(i32 %517, i32 %518)
  %520 = load i32, i32* %8, align 4
  store i32 %520, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 10), align 8
  %521 = load i64, i64* @reload_completed, align 8
  store i64 %521, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_frame_info, i32 0, i32 11), align 8
  br label %522

522:                                              ; preds = %511, %15
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

declare dso_local i32 @diddle_return_value(i32 (i64, i32*)*, i32*) #1

declare dso_local i32 @mark_reg_gr_used_mask(i64, i32*) #1

declare dso_local i32 @LOC_REG(i32) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @IN_REG(i32) #1

declare dso_local i32 @OUT_REG(i32) #1

declare dso_local i8* @MAX(i32, i64) #1

declare dso_local i32 @FR_REG(i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i64) #1

declare dso_local i64 @GR_REG(i32) #1

declare dso_local i64 @BR_REG(i32) #1

declare dso_local i8* @find_gr_spill(i32) #1

declare dso_local i32 @PR_REG(i32) #1

declare dso_local i64 @IA64_STACK_ALIGN(i64) #1

declare dso_local i32 @COPY_HARD_REG_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
