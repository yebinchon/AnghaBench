; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ledmgr.c_zfLedCtrlType1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ledmgr.c_zfLedCtrlType1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i64, i64 }

@ZM_MAX_LED_NUMBER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLedCtrlType1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %274, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @ZM_MAX_LED_NUMBER, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %277

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @zfStaIsConnected(i32* %15)
  %17 = load i64, i64* @TRUE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 3840
  %28 = ashr i32 %27, 8
  %29 = mul nsw i32 %28, 5
  store i32 %29, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 61440
  %38 = ashr i32 %37, 12
  %39 = mul nsw i32 %38, 5
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %19
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = sdiv i32 %48, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %58, %59
  %61 = mul nsw i32 %57, %60
  %62 = sub nsw i32 %56, %61
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %44
  %67 = load i32*, i32** %2, align 8
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @zfHpLedCtrl(i32* %67, i64 %68, i32 1)
  br label %74

70:                                               ; preds = %44
  %71 = load i32*, i32** %2, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @zfHpLedCtrl(i32* %71, i64 %72, i32 0)
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %19
  br label %273

76:                                               ; preds = %14
  %77 = load i32*, i32** %2, align 8
  %78 = call i64 @zfPowerSavingMgrIsSleeping(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load i32*, i32** %2, align 8
  %92 = load i64, i64* %3, align 8
  %93 = call i32 @zfHpLedCtrl(i32* %91, i64 %92, i32 0)
  br label %272

94:                                               ; preds = %80, %76
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %3, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 64
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %169

104:                                              ; preds = %94
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load i32*, i32** %2, align 8
  %113 = load i64, i64* %3, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %3, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 16
  %122 = ashr i32 %121, 4
  %123 = call i32 @zfHpLedCtrl(i32* %112, i64 %113, i32 %122)
  br label %168

124:                                              ; preds = %104
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %167

136:                                              ; preds = %130, %124
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %3, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %136
  %153 = load i32*, i32** %2, align 8
  %154 = load i64, i64* %3, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %3, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 16
  %163 = ashr i32 %162, 4
  %164 = xor i32 %163, 1
  %165 = call i32 @zfHpLedCtrl(i32* %153, i64 %154, i32 %164)
  br label %166

166:                                              ; preds = %152, %136
  br label %167

167:                                              ; preds = %166, %130
  br label %168

168:                                              ; preds = %167, %111
  br label %271

169:                                              ; preds = %94
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* %3, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 48
  %178 = ashr i32 %177, 4
  %179 = shl i32 1, %178
  %180 = mul nsw i32 5, %179
  store i32 %180, i32* %7, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = mul nsw i32 %185, 2
  %187 = sdiv i32 %184, %186
  store i32 %187, i32* %6, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %7, align 4
  %194 = mul nsw i32 %193, 2
  %195 = mul nsw i32 %192, %194
  %196 = sub nsw i32 %191, %195
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %235

200:                                              ; preds = %169
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = load i32*, i32** %2, align 8
  %209 = load i64, i64* %3, align 8
  %210 = call i32 @zfHpLedCtrl(i32* %208, i64 %209, i32 0)
  br label %234

211:                                              ; preds = %200
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %211
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %217, %211
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 3
  store i64 0, i64* %226, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  store i64 0, i64* %229, align 8
  %230 = load i32*, i32** %2, align 8
  %231 = load i64, i64* %3, align 8
  %232 = call i32 @zfHpLedCtrl(i32* %230, i64 %231, i32 1)
  br label %233

233:                                              ; preds = %223, %217
  br label %234

234:                                              ; preds = %233, %207
  br label %270

235:                                              ; preds = %169
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, 1
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %235
  %243 = load i32*, i32** %2, align 8
  %244 = load i64, i64* %3, align 8
  %245 = call i32 @zfHpLedCtrl(i32* %243, i64 %244, i32 1)
  br label %269

246:                                              ; preds = %235
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = icmp sgt i64 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %246
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp sgt i64 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %252, %246
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 3
  store i64 0, i64* %261, align 8
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 2
  store i64 0, i64* %264, align 8
  %265 = load i32*, i32** %2, align 8
  %266 = load i64, i64* %3, align 8
  %267 = call i32 @zfHpLedCtrl(i32* %265, i64 %266, i32 0)
  br label %268

268:                                              ; preds = %258, %252
  br label %269

269:                                              ; preds = %268, %242
  br label %270

270:                                              ; preds = %269, %234
  br label %271

271:                                              ; preds = %270, %168
  br label %272

272:                                              ; preds = %271, %90
  br label %273

273:                                              ; preds = %272, %75
  br label %274

274:                                              ; preds = %273
  %275 = load i64, i64* %3, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %3, align 8
  br label %10

277:                                              ; preds = %10
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfHpLedCtrl(i32*, i64, i32) #1

declare dso_local i64 @zfPowerSavingMgrIsSleeping(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
