; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_ShadowUpdate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_ShadowUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32** }

@TRUE = common dso_local global i32 0, align 4
@EFUSE_INIT_MAP = common dso_local global i64 0, align 8
@EFUSE_MODIFY_MAP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EFUSE_ShadowUpdate(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i32 @efuse_PowerSwitch(%struct.net_device* %12, i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %159, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %162

18:                                               ; preds = %15
  store i32 15, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 8
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %135, %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %138

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %27, %24
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = sdiv i32 %48, 2
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %70 = getelementptr inbounds i32*, i32** %68, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32 %65, i32* %76, align 4
  br label %134

77:                                               ; preds = %43
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %89, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %77
  %104 = load i32, i32* %4, align 4
  %105 = sdiv i32 %104, 2
  %106 = call i32 @EFUSE_BIT(i32 %105)
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %111 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %110, i32 0, i32 0
  %112 = load i32**, i32*** %111, align 8
  %113 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %114 = getelementptr inbounds i32*, i32** %112, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 0
  %124 = load i32**, i32*** %123, align 8
  %125 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32 %121, i32* %132, align 4
  br label %133

133:                                              ; preds = %103, %77
  br label %134

134:                                              ; preds = %133, %47
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %21

138:                                              ; preds = %21
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 15
  br i1 %140, label %141, label %158

141:                                              ; preds = %138
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %143 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %144 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %143, i32 0, i32 0
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = call i32 @memcpy(i32* %142, i32* %151, i32 8)
  %153 = load %struct.net_device*, %struct.net_device** %2, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %7, align 4
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %157 = call i32 @efuse_PgPacketWrite(%struct.net_device* %153, i32 %154, i32 %155, i32* %156)
  br label %158

158:                                              ; preds = %141, %138
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %15

162:                                              ; preds = %15
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = load i32, i32* @FALSE, align 4
  %165 = call i32 @efuse_PowerSwitch(%struct.net_device* %163, i32 %164)
  %166 = load %struct.net_device*, %struct.net_device** %2, align 8
  %167 = call i32 @EFUSE_ShadowMapUpdate(%struct.net_device* %166)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @efuse_PowerSwitch(%struct.net_device*, i32) #1

declare dso_local i32 @EFUSE_BIT(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @efuse_PgPacketWrite(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @EFUSE_ShadowMapUpdate(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
