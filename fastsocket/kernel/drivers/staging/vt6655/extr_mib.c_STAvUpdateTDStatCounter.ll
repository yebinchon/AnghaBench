; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mib.c_STAvUpdateTDStatCounter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mib.c_STAvUpdateTDStatCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, %struct.TYPE_5__, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32*, i32*, i32 }

@TSR0_NCR = common dso_local global i32 0, align 4
@TSR1_TERR = common dso_local global i32 0, align 4
@TSR1_RETRYTMO = common dso_local global i32 0, align 4
@TSR1_TMO = common dso_local global i32 0, align 4
@ACK_DATA = common dso_local global i32 0, align 4
@TYPE_AC0DMA = common dso_local global i64 0, align 8
@TYPE_TXDMA0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @STAvUpdateTDStatCounter(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @TSR0_NCR, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %15, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %13, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @WLAN_GET_FC_TODS(i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %6
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32* %30, i32** %14, align 8
  br label %36

31:                                               ; preds = %6
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32* %35, i32** %14, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 20
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 19
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, %44
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %36
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 18
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %64
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %56
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 17
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %90

82:                                               ; preds = %56
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 16
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %82, %74
  br label %91

91:                                               ; preds = %90, %36
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @TSR1_TERR, align 4
  %94 = load i32, i32* @TSR1_RETRYTMO, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @TSR1_TMO, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @ACK_DATA, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %92, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %189

102:                                              ; preds = %91
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 14
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 14
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* @TYPE_AC0DMA, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 14
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* @TYPE_TXDMA0, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %115, %121
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = call i64 @IS_BROADCAST_ADDRESS(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %102
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 13
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %12, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 12
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %12, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %137
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  br label %188

147:                                              ; preds = %102
  %148 = load i32*, i32** %14, align 8
  %149 = call i64 @IS_MULTICAST_ADDRESS(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %147
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 11
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %12, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load i64, i64* %11, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 10
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %12, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %159
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  br label %187

169:                                              ; preds = %147
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 9
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %12, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = load i64, i64* %11, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %177
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  br label %187

187:                                              ; preds = %169, %151
  br label %188

188:                                              ; preds = %187, %129
  br label %242

189:                                              ; preds = %91
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @TSR1_TERR, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 7
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %12, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %194, %189
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @TSR1_RETRYTMO, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 6
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* %12, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %207, %202
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @TSR1_TMO, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %215
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* %12, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %220, %215
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @ACK_DATA, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %228
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* %12, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %233, %228
  br label %242

242:                                              ; preds = %241, %188
  %243 = load i32*, i32** %14, align 8
  %244 = call i64 @IS_BROADCAST_ADDRESS(i32* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %242
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* %12, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 4
  br label %275

254:                                              ; preds = %242
  %255 = load i32*, i32** %14, align 8
  %256 = call i64 @IS_MULTICAST_ADDRESS(i32* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %254
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load i64, i64* %12, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4
  br label %274

266:                                              ; preds = %254
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i64, i64* %12, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %266, %258
  br label %275

275:                                              ; preds = %274, %246
  ret void
}

declare dso_local i64 @WLAN_GET_FC_TODS(i32) #1

declare dso_local i64 @IS_BROADCAST_ADDRESS(i32*) #1

declare dso_local i64 @IS_MULTICAST_ADDRESS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
