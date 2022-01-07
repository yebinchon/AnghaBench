; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_write_rtl8225.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_write_rtl8225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i64 }

@RFPinsOutput = common dso_local global i32 0, align 4
@RFPinsEnable = common dso_local global i32 0, align 4
@RFPinsSelect = common dso_local global i32 0, align 4
@USB = common dso_local global i64 0, align 8
@SW_CONTROL_GPIO = common dso_local global i32 0, align 4
@BB_HOST_BANG_EN = common dso_local global i32 0, align 4
@BB_HOST_BANG_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @write_rtl8225 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rtl8225(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 15
  %17 = or i32 %14, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %18)
  store %struct.r8180_priv* %19, %struct.r8180_priv** %12, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i32, i32* @RFPinsOutput, align 4
  %22 = call i32 @read_nic_word(%struct.net_device* %20, i32 %21)
  %23 = and i32 %22, 65523
  store i32 %23, i32* %8, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load i32, i32* @RFPinsEnable, align 4
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = load i32, i32* @RFPinsEnable, align 4
  %28 = call i32 @read_nic_word(%struct.net_device* %26, i32 %27)
  %29 = or i32 %28, 7
  %30 = call i32 @write_nic_word(%struct.net_device* %24, i32 %25, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load i32, i32* @RFPinsSelect, align 4
  %33 = call i32 @read_nic_word(%struct.net_device* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load i32, i32* @RFPinsSelect, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, 7
  %38 = load %struct.r8180_priv*, %struct.r8180_priv** %12, align 8
  %39 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @SW_CONTROL_GPIO, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 0, %43 ], [ %45, %44 ]
  %48 = or i32 %37, %47
  %49 = call i32 @write_nic_word(%struct.net_device* %34, i32 %35, i32 %48)
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @force_pci_posting(%struct.net_device* %50)
  %52 = call i32 @udelay(i32 10)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = load i32, i32* @RFPinsOutput, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @BB_HOST_BANG_EN, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @write_nic_word(%struct.net_device* %53, i32 %54, i32 %57)
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = call i32 @force_pci_posting(%struct.net_device* %59)
  %61 = call i32 @udelay(i32 2)
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32, i32* @RFPinsOutput, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @write_nic_word(%struct.net_device* %62, i32 %63, i32 %64)
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call i32 @force_pci_posting(%struct.net_device* %66)
  %68 = call i32 @udelay(i32 10)
  store i32 15, i32* %7, align 4
  br label %69

69:                                               ; preds = %131, %46
  %70 = load i32, i32* %7, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %10, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = load i32, i32* @RFPinsOutput, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @write_nic_word(%struct.net_device* %79, i32 %80, i32 %83)
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = load i32, i32* @RFPinsOutput, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @BB_HOST_BANG_CLK, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @write_nic_word(%struct.net_device* %85, i32 %86, i32 %91)
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = load i32, i32* @RFPinsOutput, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @BB_HOST_BANG_CLK, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @write_nic_word(%struct.net_device* %93, i32 %94, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %7, align 4
  %105 = shl i32 1, %104
  %106 = and i32 %103, %105
  %107 = load i32, i32* %7, align 4
  %108 = ashr i32 %106, %107
  store i32 %108, i32* %10, align 4
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = load i32, i32* @RFPinsOutput, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @BB_HOST_BANG_CLK, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @write_nic_word(%struct.net_device* %109, i32 %110, i32 %115)
  %117 = load %struct.net_device*, %struct.net_device** %4, align 8
  %118 = load i32, i32* @RFPinsOutput, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @BB_HOST_BANG_CLK, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @write_nic_word(%struct.net_device* %117, i32 %118, i32 %123)
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = load i32, i32* @RFPinsOutput, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @write_nic_word(%struct.net_device* %125, i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %72
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %7, align 4
  br label %69

134:                                              ; preds = %69
  %135 = load %struct.net_device*, %struct.net_device** %4, align 8
  %136 = load i32, i32* @RFPinsOutput, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @BB_HOST_BANG_EN, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @write_nic_word(%struct.net_device* %135, i32 %136, i32 %139)
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = call i32 @force_pci_posting(%struct.net_device* %141)
  %143 = call i32 @udelay(i32 10)
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = load i32, i32* @RFPinsOutput, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.r8180_priv*, %struct.r8180_priv** %12, align 8
  %148 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @USB, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %134
  br label %155

153:                                              ; preds = %134
  %154 = load i32, i32* @BB_HOST_BANG_EN, align 4
  br label %155

155:                                              ; preds = %153, %152
  %156 = phi i32 [ 4, %152 ], [ %154, %153 ]
  %157 = or i32 %146, %156
  %158 = call i32 @write_nic_word(%struct.net_device* %144, i32 %145, i32 %157)
  %159 = load %struct.net_device*, %struct.net_device** %4, align 8
  %160 = load i32, i32* @RFPinsSelect, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.r8180_priv*, %struct.r8180_priv** %12, align 8
  %163 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @USB, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  br label %170

168:                                              ; preds = %155
  %169 = load i32, i32* @SW_CONTROL_GPIO, align 4
  br label %170

170:                                              ; preds = %168, %167
  %171 = phi i32 [ 0, %167 ], [ %169, %168 ]
  %172 = or i32 %161, %171
  %173 = call i32 @write_nic_word(%struct.net_device* %159, i32 %160, i32 %172)
  %174 = load %struct.r8180_priv*, %struct.r8180_priv** %12, align 8
  %175 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @USB, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = call i32 @mdelay(i32 2)
  br label %184

181:                                              ; preds = %170
  %182 = load %struct.net_device*, %struct.net_device** %4, align 8
  %183 = call i32 @rtl8185_rf_pins_enable(%struct.net_device* %182)
  br label %184

184:                                              ; preds = %181, %179
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl8185_rf_pins_enable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
