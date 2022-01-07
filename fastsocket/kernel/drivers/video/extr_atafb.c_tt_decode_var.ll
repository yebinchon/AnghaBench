; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_tt_decode_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_tt_decode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32 }
%struct.atafb_par = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@mono_moni = common dso_local global i64 0, align 8
@sttt_xres = common dso_local global i32 0, align 4
@tt_yres = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TT_SHIFTER_TTHIGH = common dso_local global i32 0, align 4
@TT_SHIFTER_TTLOW = common dso_local global i32 0, align 4
@st_yres = common dso_local global i32 0, align 4
@TT_SHIFTER_TTMID = common dso_local global i32 0, align 4
@TT_SHIFTER_STLOW = common dso_local global i32 0, align 4
@TT_SHIFTER_STMID = common dso_local global i32 0, align 4
@TT_SHIFTER_STHIGH = common dso_local global i32 0, align 4
@FB_SYNC_EXT = common dso_local global i32 0, align 4
@screen_len = common dso_local global i32 0, align 4
@screen_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.atafb_par*)* @tt_decode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_decode_var(%struct.fb_var_screeninfo* %0, %struct.atafb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.atafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.atafb_par* %1, %struct.atafb_par** %5, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* @mono_moni, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @sttt_xres, align 4
  %31 = mul nsw i32 %30, 2
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @tt_yres, align 4
  %36 = mul nsw i32 %35, 2
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %28, %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %270

41:                                               ; preds = %33
  %42 = load i32, i32* @TT_SHIFTER_TTHIGH, align 4
  %43 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %44 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @sttt_xres, align 4
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @tt_yres, align 4
  %50 = mul nsw i32 %49, 2
  store i32 %50, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %183

51:                                               ; preds = %2
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 8
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @sttt_xres, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @tt_yres, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54, %51
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %270

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 4
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @sttt_xres, align 4
  %71 = sdiv i32 %70, 2
  %72 = icmp sgt i32 %69, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @tt_yres, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %68
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %270

80:                                               ; preds = %73
  %81 = load i32, i32* @TT_SHIFTER_TTLOW, align 4
  %82 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %83 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @sttt_xres, align 4
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @tt_yres, align 4
  store i32 %88, i32* %7, align 4
  store i32 8, i32* %8, align 4
  br label %182

89:                                               ; preds = %65
  %90 = load i32, i32* %8, align 4
  %91 = icmp sgt i32 %90, 2
  br i1 %91, label %92, label %132

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @sttt_xres, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @tt_yres, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96, %92
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %270

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @sttt_xres, align 4
  %106 = sdiv i32 %105, 2
  %107 = icmp sgt i32 %104, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @st_yres, align 4
  %111 = sdiv i32 %110, 2
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %108, %103
  %114 = load i32, i32* @TT_SHIFTER_TTMID, align 4
  %115 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %116 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* @sttt_xres, align 4
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* @tt_yres, align 4
  store i32 %120, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %131

121:                                              ; preds = %108
  %122 = load i32, i32* @TT_SHIFTER_STLOW, align 4
  %123 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %124 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* @sttt_xres, align 4
  %128 = sdiv i32 %127, 2
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* @st_yres, align 4
  %130 = sdiv i32 %129, 2
  store i32 %130, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %131

131:                                              ; preds = %121, %113
  br label %181

132:                                              ; preds = %89
  %133 = load i32, i32* %8, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %156

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @sttt_xres, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @st_yres, align 4
  %142 = sdiv i32 %141, 2
  %143 = icmp sgt i32 %140, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139, %135
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %270

147:                                              ; preds = %139
  %148 = load i32, i32* @TT_SHIFTER_STMID, align 4
  %149 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %150 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i32 %148, i32* %152, align 4
  %153 = load i32, i32* @sttt_xres, align 4
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* @st_yres, align 4
  %155 = sdiv i32 %154, 2
  store i32 %155, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %180

156:                                              ; preds = %132
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @sttt_xres, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @st_yres, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162, %156
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %270

171:                                              ; preds = %162
  %172 = load i32, i32* @TT_SHIFTER_STHIGH, align 4
  %173 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %174 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  store i32 %172, i32* %176, align 4
  %177 = load i32, i32* @sttt_xres, align 4
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* @st_yres, align 4
  store i32 %178, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %179

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %147
  br label %181

181:                                              ; preds = %180, %131
  br label %182

182:                                              ; preds = %181, %80
  br label %183

183:                                              ; preds = %182, %41
  %184 = load i32, i32* %10, align 4
  %185 = icmp sle i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 0, i32* %10, align 4
  br label %194

187:                                              ; preds = %183
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %191, %187
  br label %194

194:                                              ; preds = %193, %186
  %195 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %196 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @FB_SYNC_EXT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %203 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i32 0, i32* %205, align 8
  br label %211

206:                                              ; preds = %194
  %207 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %208 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  store i32 1, i32* %210, align 8
  br label %211

211:                                              ; preds = %206, %201
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %8, align 4
  %214 = mul nsw i32 %212, %213
  %215 = sdiv i32 %214, 8
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %9, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* @screen_len, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %211
  %222 = load i32, i32* @screen_len, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %270

227:                                              ; preds = %221, %211
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %9, align 4
  %230 = mul nsw i32 %228, %229
  %231 = load i32, i32* @screen_len, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load i32, i32* @screen_len, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %3, align 4
  br label %270

239:                                              ; preds = %233, %227
  %240 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %241 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %242, %243
  %245 = load i32, i32* %10, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %239
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %3, align 4
  br label %270

253:                                              ; preds = %247, %239
  %254 = load i32, i32* %10, align 4
  %255 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %256 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load i64, i64* @screen_base, align 8
  %258 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %259 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %9, align 4
  %262 = mul nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %257, %263
  %265 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %266 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %265, i32 0, i32 2
  store i64 %264, i64* %266, align 8
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %269 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %253, %250, %236, %224, %168, %144, %100, %77, %62, %38
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
