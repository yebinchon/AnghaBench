; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_CCKTxPowerAdjust_TSSI.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_CCKTxPowerAdjust_TSSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@rCCK0_TxFilter1 = common dso_local global i32 0, align 4
@bMaskHWord = common dso_local global i32 0, align 4
@rCCK0_TxFilter2 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rCCK0_DebugPort = common dso_local global i32 0, align 4
@bMaskLWord = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @dm_CCKTxPowerAdjust_TSSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_CCKTxPowerAdjust_TSSI(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  store i64 0, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %128, label %11

11:                                               ; preds = %2
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = add nsw i32 %22, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %5, align 8
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load i32, i32* @rCCK0_TxFilter1, align 4
  %39 = load i32, i32* @bMaskHWord, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @rtl8192_setBBreg(%struct.net_device* %37, i32 %38, i32 %39, i64 %40)
  store i64 0, i64* %5, align 8
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %54 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = add nsw i32 %52, %64
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = add nsw i32 %65, %77
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %83 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 24
  %91 = add nsw i32 %78, %90
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %5, align 8
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = load i32, i32* @rCCK0_TxFilter2, align 4
  %95 = load i32, i32* @bMaskDWord, align 4
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @rtl8192_setBBreg(%struct.net_device* %93, i32 %94, i32 %95, i64 %96)
  store i64 0, i64* %5, align 8
  %98 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %99 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %110 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %113 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 7
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 8
  %121 = add nsw i32 %108, %120
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %5, align 8
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = load i32, i32* @rCCK0_DebugPort, align 4
  %125 = load i32, i32* @bMaskLWord, align 4
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @rtl8192_setBBreg(%struct.net_device* %123, i32 %124, i32 %125, i64 %126)
  br label %245

128:                                              ; preds = %2
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %133 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %141 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %144 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 8
  %152 = add nsw i32 %139, %151
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %5, align 8
  %154 = load %struct.net_device*, %struct.net_device** %3, align 8
  %155 = load i32, i32* @rCCK0_TxFilter1, align 4
  %156 = load i32, i32* @bMaskHWord, align 4
  %157 = load i64, i64* %5, align 8
  %158 = call i32 @rtl8192_setBBreg(%struct.net_device* %154, i32 %155, i32 %156, i64 %157)
  store i64 0, i64* %5, align 8
  %159 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %160 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %163 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %171 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %170, i32 0, i32 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %174 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 8
  %182 = add nsw i32 %169, %181
  %183 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %184 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %187 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 4
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 16
  %195 = add nsw i32 %182, %194
  %196 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %197 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %200 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 5
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 24
  %208 = add nsw i32 %195, %207
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %5, align 8
  %210 = load %struct.net_device*, %struct.net_device** %3, align 8
  %211 = load i32, i32* @rCCK0_TxFilter2, align 4
  %212 = load i32, i32* @bMaskDWord, align 4
  %213 = load i64, i64* %5, align 8
  %214 = call i32 @rtl8192_setBBreg(%struct.net_device* %210, i32 %211, i32 %212, i64 %213)
  store i64 0, i64* %5, align 8
  %215 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %216 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %215, i32 0, i32 1
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %219 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 6
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %227 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %226, i32 0, i32 1
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %230 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 7
  %236 = load i32, i32* %235, align 4
  %237 = shl i32 %236, 8
  %238 = add nsw i32 %225, %237
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %5, align 8
  %240 = load %struct.net_device*, %struct.net_device** %3, align 8
  %241 = load i32, i32* @rCCK0_DebugPort, align 4
  %242 = load i32, i32* @bMaskLWord, align 4
  %243 = load i64, i64* %5, align 8
  %244 = call i32 @rtl8192_setBBreg(%struct.net_device* %240, i32 %241, i32 %242, i64 %243)
  br label %245

245:                                              ; preds = %128, %11
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
