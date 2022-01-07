; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_update_ratr_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_update_ratr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i32 }

@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@HT_IOT_ACT_DISABLE_TX_2SS = common dso_local global i32 0, align 4
@HT_IOT_ACT_DISABLE_TX_40_MHZ = common dso_local global i32 0, align 4
@HT_IOT_ACT_DISABLE_SHORT_GI = common dso_local global i32 0, align 4
@SG_RATE = common dso_local global i32 0, align 4
@ARFR0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"=============>ARFR0+rate_index*4:%#x\0A\00", align 1
@FW_CMD_RA_REFRESH_N = common dso_local global i32 0, align 4
@FW_CMD_RA_REFRESH_BG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192SU_update_ratr_table(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %14)
  store %struct.r8192_priv* %15, %struct.r8192_priv** %3, align 8
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %17, align 8
  store %struct.ieee80211_device* %18, %struct.ieee80211_device** %4, align 8
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @rtl8192_config_rate(%struct.net_device* %30, i32* %6)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 12
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %100 [
    i32 132, label %38
    i32 131, label %41
    i32 130, label %44
    i32 129, label %47
    i32 128, label %47
  ]

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 4080
  store i32 %40, i32* %6, align 4
  br label %101

41:                                               ; preds = %1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 13
  store i32 %43, i32* %6, align 4
  br label %101

44:                                               ; preds = %1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 4085
  store i32 %46, i32* %6, align 4
  br label %101

47:                                               ; preds = %1, %1
  store i32 1, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 520197
  store i32 %52, i32* %6, align 4
  br label %99

53:                                               ; preds = %47
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @RF_1T2R, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %74, label %59

59:                                               ; preds = %53
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RF_1T1R, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HT_IOT_ACT_DISABLE_TX_2SS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65, %59, %53
  store i32 1044485, i32* %11, align 4
  br label %76

75:                                               ; preds = %65
  store i32 252702725, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %78 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HT_IOT_ACT_DISABLE_TX_40_MHZ, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, 16
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %83, %76
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %50
  br label %101

100:                                              ; preds = %1
  br label %101

101:                                              ; preds = %100, %99, %44, %41, %38
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 268435455
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %177

106:                                              ; preds = %101
  %107 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %108 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HT_IOT_ACT_DISABLE_SHORT_GI, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %177

115:                                              ; preds = %106
  %116 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %117 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %124 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %122, %115
  %130 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %131 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %177, label %136

136:                                              ; preds = %129
  %137 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %138 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %177

143:                                              ; preds = %136, %122
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %144 = load i32, i32* %6, align 4
  %145 = or i32 %144, 268435456
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = ashr i32 %146, 12
  store i32 %147, i32* %13, align 4
  store i32 15, i32* %12, align 4
  br label %148

148:                                              ; preds = %159, %143
  %149 = load i32, i32* %12, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load i32, i32* %12, align 4
  %153 = shl i32 1, %152
  %154 = load i32, i32* %13, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %162

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %12, align 4
  br label %148

162:                                              ; preds = %157, %148
  %163 = load i32, i32* %12, align 4
  %164 = shl i32 %163, 12
  %165 = load i32, i32* %12, align 4
  %166 = shl i32 %165, 8
  %167 = or i32 %164, %166
  %168 = load i32, i32* %12, align 4
  %169 = shl i32 %168, 4
  %170 = or i32 %167, %169
  %171 = load i32, i32* %12, align 4
  %172 = or i32 %170, %171
  store i32 %172, i32* %12, align 4
  %173 = load %struct.net_device*, %struct.net_device** %2, align 8
  %174 = load i32, i32* @SG_RATE, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @write_nic_byte(%struct.net_device* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %162, %136, %129, %106, %101
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  %179 = load i64, i64* @ARFR0, align 8
  %180 = load i32, i32* %7, align 4
  %181 = mul nsw i32 %180, 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %179, %182
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @write_nic_dword(%struct.net_device* %178, i64 %183, i32 %184)
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %6, align 4
  %189 = and i32 %188, -4096
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %177
  %192 = load %struct.net_device*, %struct.net_device** %2, align 8
  %193 = load i32, i32* @FW_CMD_RA_REFRESH_N, align 4
  %194 = call i32 @HalSetFwCmd8192S(%struct.net_device* %192, i32 %193)
  br label %199

195:                                              ; preds = %177
  %196 = load %struct.net_device*, %struct.net_device** %2, align 8
  %197 = load i32, i32* @FW_CMD_RA_REFRESH_BG, align 4
  %198 = call i32 @HalSetFwCmd8192S(%struct.net_device* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %191
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_config_rate(%struct.net_device*, i32*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @HalSetFwCmd8192S(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
