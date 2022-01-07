; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfAddFragToDefragList.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfAddFragToDefragList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64*, i64, i32** }
%struct.zsAdditionInfo = type { i32 }

@ZM_MAX_DEFRAG_ENTRIES = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zfAddFragToDefragList(i32* %0, i32* %1, i64* %2, i64 %3, i64 %4, i64 %5, %struct.zsAdditionInfo* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.zsAdditionInfo*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.zsAdditionInfo* %6, %struct.zsAdditionInfo** %15, align 8
  store i32* null, i32** %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @zmw_get_wlan_dev(i32* %27)
  %29 = call i32 (...) @zmw_declare_for_critical_section()
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @zmw_enter_critical_section(i32* %30)
  store i64 0, i64* %16, align 8
  br label %32

32:                                               ; preds = %242, %7
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* @ZM_MAX_DEFRAG_ENTRIES, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %245

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %241

46:                                               ; preds = %36
  store i64 0, i64* %17, align 8
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i64, i64* %17, align 8
  %49 = icmp ult i64 %48, 6
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %17, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %17, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %54, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  br label %72

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %17, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %17, align 8
  br label %47

72:                                               ; preds = %67, %47
  %73 = load i64, i64* %17, align 8
  %74 = icmp eq i64 %73, 6
  br i1 %74, label %75, label %240

75:                                               ; preds = %72
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i64, i64* %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %76, %84
  br i1 %85, label %86, label %239

86:                                               ; preds = %75
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i64, i64* %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %87, %95
  br i1 %96, label %97, label %238

97:                                               ; preds = %86
  %98 = load i64, i64* %13, align 8
  %99 = icmp slt i64 %98, 8
  br i1 %99, label %100, label %238

100:                                              ; preds = %97
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i64, i64* %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i32**, i32*** %108, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  store i32* %101, i32** %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i64, i64* %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  store i64 1, i64* %20, align 8
  %121 = load i64, i64* %14, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %237

123:                                              ; preds = %100
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i64, i64* %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 0
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %19, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load i32*, i32** %19, align 8
  %136 = call i64 @zfwBufGetSize(i32* %134, i32* %135)
  store i64 %136, i64* %22, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32*, i32** %19, align 8
  %139 = call i32 @zmw_rx_buf_readh(i32* %137, i32* %138, i32 0)
  %140 = and i32 %139, 128
  %141 = ashr i32 %140, 6
  %142 = add nsw i32 24, %141
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %23, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** %19, align 8
  %146 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %15, align 8
  %147 = call i32 @zfGetRxIvIcvLength(i32* %144, i32* %145, i32 0, i64* %25, i64* %26, %struct.zsAdditionInfo* %146)
  %148 = load i64, i64* %25, align 8
  %149 = load i64, i64* %23, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %23, align 8
  store i64 1, i64* %18, align 8
  br label %151

151:                                              ; preds = %222, %123
  %152 = load i64, i64* %18, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i64, i64* %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ult i64 %152, %160
  br i1 %161, label %162, label %225

162:                                              ; preds = %151
  %163 = load i32*, i32** %9, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i64, i64* %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i32**, i32*** %170, align 8
  %172 = load i64, i64* %18, align 8
  %173 = getelementptr inbounds i32*, i32** %171, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = call i64 @zfwBufGetSize(i32* %163, i32* %174)
  store i64 %175, i64* %24, align 8
  %176 = load i64, i64* %22, align 8
  %177 = load i64, i64* %24, align 8
  %178 = add i64 %176, %177
  %179 = load i64, i64* %23, align 8
  %180 = sub i64 %178, %179
  %181 = icmp ult i64 %180, 1560
  br i1 %181, label %182, label %207

182:                                              ; preds = %162
  %183 = load i32*, i32** %9, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i64, i64* %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  %192 = load i32**, i32*** %191, align 8
  %193 = load i64, i64* %18, align 8
  %194 = getelementptr inbounds i32*, i32** %192, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* %22, align 8
  %197 = load i64, i64* %23, align 8
  %198 = load i64, i64* %24, align 8
  %199 = load i64, i64* %23, align 8
  %200 = sub i64 %198, %199
  %201 = call i32 @zfRxBufferCopy(i32* %183, i32* %184, i32* %195, i64 %196, i64 %197, i64 %200)
  %202 = load i64, i64* %24, align 8
  %203 = load i64, i64* %23, align 8
  %204 = sub i64 %202, %203
  %205 = load i64, i64* %22, align 8
  %206 = add i64 %205, %204
  store i64 %206, i64* %22, align 8
  br label %208

207:                                              ; preds = %162
  store i64 1, i64* %21, align 8
  br label %208

208:                                              ; preds = %207, %182
  %209 = load i32*, i32** %9, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = load i64, i64* %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  %217 = load i32**, i32*** %216, align 8
  %218 = load i64, i64* %18, align 8
  %219 = getelementptr inbounds i32*, i32** %217, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @zfwBufFree(i32* %209, i32* %220, i32 0)
  br label %222

222:                                              ; preds = %208
  %223 = load i64, i64* %18, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %18, align 8
  br label %151

225:                                              ; preds = %151
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = load i64, i64* %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  store i64 0, i64* %232, align 8
  %233 = load i32*, i32** %9, align 8
  %234 = load i32*, i32** %19, align 8
  %235 = load i64, i64* %22, align 8
  %236 = call i32 @zfwBufSetSize(i32* %233, i32* %234, i64 %235)
  br label %237

237:                                              ; preds = %225, %100
  br label %245

238:                                              ; preds = %97, %86
  br label %239

239:                                              ; preds = %238, %75
  br label %240

240:                                              ; preds = %239, %72
  br label %241

241:                                              ; preds = %240, %36
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %16, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %16, align 8
  br label %32

245:                                              ; preds = %237, %32
  %246 = load i32*, i32** %9, align 8
  %247 = call i32 @zmw_leave_critical_section(i32* %246)
  %248 = load i64, i64* %21, align 8
  %249 = icmp eq i64 %248, 1
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32*, i32** %9, align 8
  %252 = load i32*, i32** %19, align 8
  %253 = call i32 @zfwBufFree(i32* %251, i32* %252, i32 0)
  store i32* null, i32** %8, align 8
  br label %263

254:                                              ; preds = %245
  %255 = load i64, i64* %20, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load i32*, i32** %9, align 8
  %259 = load i32*, i32** %10, align 8
  %260 = call i32 @zfwBufFree(i32* %258, i32* %259, i32 0)
  store i32* null, i32** %8, align 8
  br label %263

261:                                              ; preds = %254
  %262 = load i32*, i32** %19, align 8
  store i32* %262, i32** %8, align 8
  br label %263

263:                                              ; preds = %261, %257, %250
  %264 = load i32*, i32** %8, align 8
  ret i32* %264
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i64 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zfGetRxIvIcvLength(i32*, i32*, i32, i64*, i64*, %struct.zsAdditionInfo*) #1

declare dso_local i32 @zfRxBufferCopy(i32*, i32*, i32*, i64, i64, i64) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

declare dso_local i32 @zfwBufSetSize(i32*, i32*, i64) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
