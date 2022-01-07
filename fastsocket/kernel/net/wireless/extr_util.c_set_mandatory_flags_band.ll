; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_set_mandatory_flags_band.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_set_mandatory_flags_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE80211_RATE_MANDATORY_A = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_B = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_G = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*, i32)* @set_mandatory_flags_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mandatory_flags_band(%struct.ieee80211_supported_band* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_supported_band*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %260 [
    i32 130, label %8
    i32 131, label %65
    i32 129, label %238
    i32 128, label %258
  ]

8:                                                ; preds = %2
  store i32 3, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %59, %8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 60
  br i1 %24, label %45, label %25

25:                                               ; preds = %15
  %26 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 120
  br i1 %34, label %45, label %35

35:                                               ; preds = %25
  %36 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 240
  br i1 %44, label %45, label %58

45:                                               ; preds = %35, %25, %15
  %46 = load i32, i32* @IEEE80211_RATE_MANDATORY_A, align 4
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %46
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %45, %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %9

62:                                               ; preds = %9
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @WARN_ON(i32 %63)
  br label %260

65:                                               ; preds = %2
  store i32 7, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %222, %65
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %225

72:                                               ; preds = %66
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %74 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %97

82:                                               ; preds = %72
  %83 = load i32, i32* @IEEE80211_RATE_MANDATORY_B, align 4
  %84 = load i32, i32* @IEEE80211_RATE_MANDATORY_G, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %87 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %85
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %82, %72
  %98 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 20
  br i1 %106, label %157, label %107

107:                                              ; preds = %97
  %108 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 55
  br i1 %116, label %157, label %117

117:                                              ; preds = %107
  %118 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %119 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 110
  br i1 %126, label %157, label %127

127:                                              ; preds = %117
  %128 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %129 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %128, i32 0, i32 2
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 60
  br i1 %136, label %157, label %137

137:                                              ; preds = %127
  %138 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 120
  br i1 %146, label %157, label %147

147:                                              ; preds = %137
  %148 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %149 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 240
  br i1 %156, label %157, label %170

157:                                              ; preds = %147, %137, %127, %117, %107, %97
  %158 = load i32, i32* @IEEE80211_RATE_MANDATORY_G, align 4
  %159 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %160 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %158
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %157, %147
  %171 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %172 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 10
  br i1 %179, label %180, label %221

180:                                              ; preds = %170
  %181 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %182 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %181, i32 0, i32 2
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 20
  br i1 %189, label %190, label %221

190:                                              ; preds = %180
  %191 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %192 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %191, i32 0, i32 2
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 55
  br i1 %199, label %200, label %221

200:                                              ; preds = %190
  %201 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %202 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %201, i32 0, i32 2
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 110
  br i1 %209, label %210, label %221

210:                                              ; preds = %200
  %211 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %212 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %213 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %212, i32 0, i32 2
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %211
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %210, %200, %190, %180, %170
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %5, align 4
  br label %66

225:                                              ; preds = %66
  %226 = load i32, i32* %6, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 3
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 6
  br label %234

234:                                              ; preds = %231, %228, %225
  %235 = phi i1 [ false, %228 ], [ false, %225 ], [ %233, %231 ]
  %236 = zext i1 %235 to i32
  %237 = call i32 @WARN_ON(i32 %236)
  br label %260

238:                                              ; preds = %2
  %239 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %240 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = call i32 @WARN_ON(i32 %245)
  %247 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %248 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 30
  %255 = icmp ne i32 %254, 30
  %256 = zext i1 %255 to i32
  %257 = call i32 @WARN_ON(i32 %256)
  br label %260

258:                                              ; preds = %2
  %259 = call i32 @WARN_ON(i32 1)
  br label %260

260:                                              ; preds = %2, %258, %238, %234, %62
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
