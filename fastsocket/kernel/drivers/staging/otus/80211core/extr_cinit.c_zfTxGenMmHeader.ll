; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cinit.c_zfTxGenMmHeader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cinit.c_zfTxGenMmHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32*, i64, i64, i64 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_PROBEREQ = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_BA = common dso_local global i32 0, align 4
@ZM_MODE_PSEUDO = common dso_local global i64 0, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_ATIM = common dso_local global i32 0, align 4
@ZM_BIT_15 = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_QOS_NULL = common dso_local global i32 0, align 4
@ZM_ENCRYPTION_WEP_ENABLED = common dso_local global i64 0, align 8
@ZM_WEP64 = common dso_local global i64 0, align 8
@ZM_WEP128 = common dso_local global i64 0, align 8
@ZM_WEP256 = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_PSPOLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfTxGenMmHeader(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 32, i32* %17, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @zmw_get_wlan_dev(i32* %18)
  %20 = call i32 (...) @zmw_declare_for_critical_section()
  %21 = load i32, i32* %13, align 4
  %22 = add nsw i32 24, %21
  %23 = add nsw i32 %22, 4
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %8
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 12, i32* %33, align 4
  br label %37

34:                                               ; preds = %8
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 8, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ZM_MODE_AP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 3000
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 3840, i32* %50, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 0, i32* %52, align 4
  br label %58

53:                                               ; preds = %43
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 3841, i32* %55, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 11, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %76

59:                                               ; preds = %37
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 3000
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 3840, i32* %67, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 1, i32* %69, align 4
  br label %75

70:                                               ; preds = %59
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 3841, i32* %72, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 11, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %58
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  store i32 0, i32* %81, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %130

87:                                               ; preds = %76
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @ZM_WLAN_FRAME_TYPE_PROBEREQ, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 12
  store i32 65535, i32* %93, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 13
  store i32 65535, i32* %95, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 14
  store i32 65535, i32* %97, align 4
  br label %129

98:                                               ; preds = %87
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @ZM_WLAN_FRAME_TYPE_BA, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %128

103:                                              ; preds = %98
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 12
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 13
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 14
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %103, %102
  br label %129

129:                                              ; preds = %128, %91
  br label %229

130:                                              ; preds = %76
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ZM_MODE_PSEUDO, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load i32*, i32** %12, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 12
  store i32 0, i32* %138, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 13
  store i32 0, i32* %140, align 4
  %141 = load i32*, i32** %12, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 14
  store i32 0, i32* %142, align 4
  br label %228

143:                                              ; preds = %130
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ZM_MODE_IBSS, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %184

149:                                              ; preds = %143
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 12
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %12, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 13
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 14
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @ZM_WLAN_FRAME_TYPE_ATIM, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %149
  %178 = load i32, i32* @ZM_BIT_15, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %149
  br label %227

184:                                              ; preds = %143
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @ZM_MODE_AP, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %226

190:                                              ; preds = %184
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %12, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 12
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %12, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 13
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %15, align 4
  %211 = shl i32 %210, 8
  %212 = add nsw i32 %209, %211
  %213 = load i32*, i32** %12, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 14
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @ZM_WLAN_FRAME_TYPE_PROBEREQ, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %190
  %219 = load i32*, i32** %12, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 12
  store i32 65535, i32* %220, align 4
  %221 = load i32*, i32** %12, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 13
  store i32 65535, i32* %222, align 4
  %223 = load i32*, i32** %12, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 14
  store i32 65535, i32* %224, align 4
  br label %225

225:                                              ; preds = %218, %190
  br label %226

226:                                              ; preds = %225, %184
  br label %227

227:                                              ; preds = %226, %183
  br label %228

228:                                              ; preds = %227, %136
  br label %229

229:                                              ; preds = %228, %129
  %230 = load i32*, i32** %11, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %12, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 6
  store i32 %232, i32* %234, align 4
  %235 = load i32*, i32** %11, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %12, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 7
  store i32 %237, i32* %239, align 4
  %240 = load i32*, i32** %11, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %12, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 8
  store i32 %242, i32* %244, align 4
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %12, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 9
  store i32 %249, i32* %251, align 4
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %12, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 10
  store i32 %256, i32* %258, align 4
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @ZM_MODE_AP, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %275

264:                                              ; preds = %229
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 2
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %15, align 4
  %271 = shl i32 %270, 8
  %272 = add nsw i32 %269, %271
  %273 = load i32*, i32** %12, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 11
  store i32 %272, i32* %274, align 4
  br label %283

275:                                              ; preds = %229
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %12, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 11
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %275, %264
  %284 = load i32*, i32** %9, align 8
  %285 = call i32 @zmw_enter_critical_section(i32* %284)
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 8
  %290 = shl i32 %288, 4
  %291 = load i32*, i32** %12, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 15
  store i32 %290, i32* %292, align 4
  %293 = load i32*, i32** %9, align 8
  %294 = call i32 @zmw_leave_critical_section(i32* %293)
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* @ZM_WLAN_FRAME_TYPE_QOS_NULL, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %307

298:                                              ; preds = %283
  %299 = load i32*, i32** %12, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 16
  store i32 0, i32* %300, align 4
  %301 = load i32, i32* %17, align 4
  %302 = add nsw i32 %301, 2
  store i32 %302, i32* %17, align 4
  %303 = load i32*, i32** %12, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, 2
  store i32 %306, i32* %304, align 4
  br label %307

307:                                              ; preds = %298, %283
  %308 = load i32, i32* %16, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %369

310:                                              ; preds = %307
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @ZM_ENCRYPTION_WEP_ENABLED, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %368

317:                                              ; preds = %310
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @ZM_WEP64, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %338, label %324

324:                                              ; preds = %317
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @ZM_WEP128, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %338, label %331

331:                                              ; preds = %324
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @ZM_WEP256, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %367

338:                                              ; preds = %331, %324, %317
  %339 = load i32*, i32** %12, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 4
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, 16384
  store i32 %342, i32* %340, align 4
  %343 = load i32*, i32** %12, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 16
  store i32 0, i32* %344, align 4
  %345 = load i32*, i32** %12, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 17
  store i32 0, i32* %346, align 4
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 4
  %350 = load i64, i64* %349, align 8
  %351 = trunc i64 %350 to i32
  %352 = shl i32 %351, 14
  %353 = load i32*, i32** %12, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 17
  %355 = load i32, i32* %354, align 4
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 4
  %357 = load i32, i32* %17, align 4
  %358 = add nsw i32 %357, 4
  store i32 %358, i32* %17, align 4
  %359 = load i32*, i32** %12, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 0
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %361, 8
  store i32 %362, i32* %360, align 4
  %363 = load i32*, i32** %12, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 1
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, 64
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %338, %331
  br label %368

368:                                              ; preds = %367, %310
  br label %369

369:                                              ; preds = %368, %307
  %370 = load i32, i32* %10, align 4
  %371 = load i32, i32* @ZM_WLAN_FRAME_TYPE_PSPOLL, align 4
  %372 = icmp ne i32 %370, %371
  br i1 %372, label %373, label %378

373:                                              ; preds = %369
  %374 = load i32*, i32** %12, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  %376 = load i32, i32* %375, align 4
  %377 = or i32 %376, 512
  store i32 %377, i32* %375, align 4
  br label %378

378:                                              ; preds = %373, %369
  %379 = load i32, i32* %17, align 4
  ret i32 %379
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
