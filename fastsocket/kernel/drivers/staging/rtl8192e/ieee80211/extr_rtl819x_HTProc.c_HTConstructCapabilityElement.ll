; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HTConstructCapabilityElement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HTConstructCapabilityElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32*, i32, i64 (i32)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i64, i64, i64, i64, i64, i64, i32, i64 }

@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"posHTCap or pHTInfo can't be null in HTConstructCapabilityElement()\0A\00", align 1
@HT_SPEC_VER_EWC = common dso_local global i64 0, align 8
@__const.HTConstructCapabilityElement.EWC11NHTCap = private unnamed_addr constant [4 x i32] [i32 0, i32 144, i32 76, i32 51], align 16
@MAX_RECEIVE_BUFFER_SIZE = common dso_local global i32 0, align 4
@IEEE80211_DL_HT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"TX HT cap/info ele BW=%d MaxAMSDUSize:%d DssCCk:%d\0A\00", align 1
@HT_IOT_ACT_DISABLE_MCS15 = common dso_local global i32 0, align 4
@HT_IOT_ACT_DISABLE_MCS14 = common dso_local global i32 0, align 4
@HT_IOT_ACT_DISABLE_ALL_2SS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTConstructCapabilityElement(%struct.ieee80211_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %4
  %22 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %23 = call i32 (i32, i8*, ...) @IEEE80211_DEBUG(i32 %22, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %228

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memset(i32* %25, i32 0, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HT_SPEC_VER_EWC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %35, i8* align 16 bitcast ([4 x i32]* @__const.HTConstructCapabilityElement.EWC11NHTCap to i8*), i64 16, i1 false)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %38 = call i32 @memcpy(i32* %36, i32* %37, i32 16)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = bitcast i32* %40 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %10, align 8
  br label %45

42:                                               ; preds = %24
  %43 = load i32*, i32** %6, align 8
  %44 = bitcast i32* %43 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %10, align 8
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 18
  store i64 0, i64* %47, align 8
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 2
  %50 = load i64 (i32)*, i64 (i32)** %49, align 8
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 %50(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %68

59:                                               ; preds = %45
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %59, %56
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 17
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 16
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 15
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 14
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @MAX_RECEIVE_BUFFER_SIZE, align 4
  %87 = icmp sge i32 %86, 7935
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %68
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  br label %104

103:                                              ; preds = %68
  br label %104

104:                                              ; preds = %103, %96
  %105 = phi i32 [ %102, %96 ], [ 0, %103 ]
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 13
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 12
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @IEEE80211_DL_HT, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @IEEE80211_DEBUG(i32 %112, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %118, i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %104
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  store i32 7, i32* %127, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 7
  store i32 2, i32* %129, align 4
  br label %135

130:                                              ; preds = %104
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 7
  store i32 3, i32* %132, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 6
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 8
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %140 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @memcpy(i32* %138, i32* %141, i32 16)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @HT_IOT_ACT_DISABLE_MCS15, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %135
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 8
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 127
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %149, %135
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @HT_IOT_ACT_DISABLE_MCS14, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 8
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 191
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %163, %156
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @HT_IOT_ACT_DISABLE_ALL_2SS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %170
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 0
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %177, %170
  %185 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %186 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %185, i32 0, i32 2
  %187 = load i64 (i32)*, i64 (i32)** %186, align 8
  %188 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %189 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i64 %187(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %184
  store i32 1, i32* %12, align 4
  br label %194

194:                                              ; preds = %204, %193
  %195 = load i32, i32* %12, align 4
  %196 = icmp slt i32 %195, 16
  br i1 %196, label %197, label %207

197:                                              ; preds = %194
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 8
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 0, i32* %203, align 4
  br label %204

204:                                              ; preds = %197
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  br label %194

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %207, %184
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 9
  %211 = call i32 @memset(i32* %210, i32 0, i32 2)
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 10
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @memset(i32* %214, i32 0, i32 4)
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 11
  store i64 0, i64* %217, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @HT_SPEC_VER_EWC, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %208
  %224 = load i32*, i32** %7, align 8
  store i32 32, i32* %224, align 4
  br label %227

225:                                              ; preds = %208
  %226 = load i32*, i32** %7, align 8
  store i32 28, i32* %226, align 4
  br label %227

227:                                              ; preds = %225, %223
  br label %228

228:                                              ; preds = %227, %21
  ret void
}

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
