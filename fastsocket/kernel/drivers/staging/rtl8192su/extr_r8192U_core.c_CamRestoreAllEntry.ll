; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_CamRestoreAllEntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_CamRestoreAllEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.r8192_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@CamRestoreAllEntry.CAM_CONST_ADDR = internal global [4 x [6 x i32]] [[6 x i32] zeroinitializer, [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 2], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 3]], align 16
@CamRestoreAllEntry.CAM_CONST_BROAD = internal global [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@COMP_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CamRestoreAllEntry: \0A\00", align 1
@KEY_TYPE_WEP40 = common dso_local global i64 0, align 8
@KEY_TYPE_WEP104 = common dso_local global i64 0, align 8
@KEY_TYPE_TKIP = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@KEY_TYPE_CCMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CamRestoreAllEntry(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %4, align 8
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32, i32* @COMP_SEC, align 4
  %15 = call i32 @RT_TRACE(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KEY_TYPE_WEP40, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KEY_TYPE_WEP104, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %23, %1
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @CamRestoreAllEntry.CAM_CONST_ADDR, i64 0, i64 %37
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %38, i64 0, i64 0
  store i32* %39, i32** %5, align 8
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @setKey(%struct.net_device* %40, i32 %41, i32 %42, i64 %47, i32* %48, i32 0, i32* null)
  br label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %32

53:                                               ; preds = %32
  br label %132

54:                                               ; preds = %23
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @KEY_TYPE_TKIP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %54
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IW_MODE_ADHOC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = call i32 @setKey(%struct.net_device* %71, i32 4, i32 0, i64 %76, i32* %80, i32 0, i32* null)
  br label %91

82:                                               ; preds = %62
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @setKey(%struct.net_device* %83, i32 4, i32 0, i64 %88, i32* %89, i32 0, i32* null)
  br label %91

91:                                               ; preds = %82, %70
  br label %131

92:                                               ; preds = %54
  %93 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %94 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @KEY_TYPE_CCMP, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %92
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @IW_MODE_ADHOC, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %111 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = call i32 @setKey(%struct.net_device* %109, i32 4, i32 0, i64 %114, i32* %118, i32 0, i32* null)
  br label %129

120:                                              ; preds = %100
  %121 = load %struct.net_device*, %struct.net_device** %2, align 8
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @setKey(%struct.net_device* %121, i32 4, i32 0, i64 %126, i32* %127, i32 0, i32* null)
  br label %129

129:                                              ; preds = %120, %108
  br label %130

130:                                              ; preds = %129, %92
  br label %131

131:                                              ; preds = %130, %91
  br label %132

132:                                              ; preds = %131, %53
  %133 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %134 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @KEY_TYPE_TKIP, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %175

140:                                              ; preds = %132
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @CamRestoreAllEntry.CAM_CONST_BROAD, i64 0, i64 0), i32** %5, align 8
  store i32 1, i32* %3, align 4
  br label %141

141:                                              ; preds = %155, %140
  %142 = load i32, i32* %3, align 4
  %143 = icmp slt i32 %142, 4
  br i1 %143, label %144, label %158

144:                                              ; preds = %141
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %3, align 4
  %148 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %149 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @setKey(%struct.net_device* %145, i32 %146, i32 %147, i64 %152, i32* %153, i32 0, i32* null)
  br label %155

155:                                              ; preds = %144
  %156 = load i32, i32* %3, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %3, align 4
  br label %141

158:                                              ; preds = %141
  %159 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %160 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IW_MODE_ADHOC, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %169 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @setKey(%struct.net_device* %167, i32 0, i32 0, i64 %172, i32* getelementptr inbounds ([4 x [6 x i32]], [4 x [6 x i32]]* @CamRestoreAllEntry.CAM_CONST_ADDR, i64 0, i64 0, i64 0), i32 0, i32* null)
  br label %174

174:                                              ; preds = %166, %158
  br label %219

175:                                              ; preds = %132
  %176 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %177 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %176, i32 0, i32 0
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @KEY_TYPE_CCMP, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %218

183:                                              ; preds = %175
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @CamRestoreAllEntry.CAM_CONST_BROAD, i64 0, i64 0), i32** %5, align 8
  store i32 1, i32* %3, align 4
  br label %184

184:                                              ; preds = %198, %183
  %185 = load i32, i32* %3, align 4
  %186 = icmp slt i32 %185, 4
  br i1 %186, label %187, label %201

187:                                              ; preds = %184
  %188 = load %struct.net_device*, %struct.net_device** %2, align 8
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %192 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = call i32 @setKey(%struct.net_device* %188, i32 %189, i32 %190, i64 %195, i32* %196, i32 0, i32* null)
  br label %198

198:                                              ; preds = %187
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %3, align 4
  br label %184

201:                                              ; preds = %184
  %202 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %203 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @IW_MODE_ADHOC, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %201
  %210 = load %struct.net_device*, %struct.net_device** %2, align 8
  %211 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %212 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %211, i32 0, i32 0
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @setKey(%struct.net_device* %210, i32 0, i32 0, i64 %215, i32* getelementptr inbounds ([4 x [6 x i32]], [4 x [6 x i32]]* @CamRestoreAllEntry.CAM_CONST_ADDR, i64 0, i64 0, i64 0), i32 0, i32* null)
  br label %217

217:                                              ; preds = %209, %201
  br label %218

218:                                              ; preds = %217, %175
  br label %219

219:                                              ; preds = %218, %174
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @setKey(%struct.net_device*, i32, i32, i64, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
