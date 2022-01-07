; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_SetBWModeCallback8192SUsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_SetBWModeCallback8192SUsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i8*, i32, i32 }

@COMP_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"==>SetBWModeCallback8190Pci()  Switch to %s bandwidth\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"20MHz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"40MHz\00", align 1
@FALSE = common dso_local global i8* null, align 8
@BW_OPMODE = common dso_local global i64 0, align 8
@RRSR = common dso_local global i64 0, align 8
@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@COMP_DBG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"SetChannelBandwidth8190Pci():\09\09\09\09\09\09unknown Bandwidth: %#X\0A\00", align 1
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bRFMOD = common dso_local global i32 0, align 4
@rFPGA1_RFMOD = common dso_local global i32 0, align 4
@VERSION_8192S_BCUT = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter2 = common dso_local global i32 0, align 4
@rCCK0_System = common dso_local global i32 0, align 4
@bCCKSideBand = common dso_local global i32 0, align 4
@rOFDM1_LSTF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"SetChannelBandwidth8190Pci(): unknown Bandwidth: %#X\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"<==SetBWMode8190Pci()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetBWModeCallback8192SUsb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  %8 = load i32, i32* @COMP_SCAN, align 4
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 134
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i8*, i8** @FALSE, align 8
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  br label %164

24:                                               ; preds = %1
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %164

30:                                               ; preds = %24
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load i64, i64* @BW_OPMODE, align 8
  %33 = call i32 @read_nic_byte(%struct.net_device* %31, i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i64, i64* @RRSR, align 8
  %36 = add nsw i64 %35, 2
  %37 = call i32 @read_nic_byte(%struct.net_device* %34, i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %70 [
    i32 134, label %41
    i32 133, label %49
  ]

41:                                               ; preds = %30
  %42 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i64, i64* @BW_OPMODE, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @write_nic_byte(%struct.net_device* %45, i64 %46, i32 %47)
  br label %76

49:                                               ; preds = %30
  %50 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i64, i64* @BW_OPMODE, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @write_nic_byte(%struct.net_device* %54, i64 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 144
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 5
  %64 = or i32 %59, %63
  store i32 %64, i32* %5, align 4
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i64, i64* @RRSR, align 8
  %67 = add nsw i64 %66, 2
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @write_nic_byte(%struct.net_device* %65, i64 %67, i32 %68)
  br label %76

70:                                               ; preds = %30
  %71 = load i32, i32* @COMP_DBG, align 4
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %71, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %49, %41
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %132 [
    i32 134, label %80
    i32 133, label %99
  ]

80:                                               ; preds = %76
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = load i32, i32* @rFPGA0_RFMOD, align 4
  %83 = load i32, i32* @bRFMOD, align 4
  %84 = call i32 @rtl8192_setBBreg(%struct.net_device* %81, i32 %82, i32 %83, i32 0)
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = load i32, i32* @rFPGA1_RFMOD, align 4
  %87 = load i32, i32* @bRFMOD, align 4
  %88 = call i32 @rtl8192_setBBreg(%struct.net_device* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @VERSION_8192S_BCUT, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = load i32, i32* @rFPGA0_AnalogParameter2, align 4
  %97 = call i32 @rtl8192_setBBreg(%struct.net_device* %95, i32 %96, i32 255, i32 88)
  br label %98

98:                                               ; preds = %94, %80
  br label %138

99:                                               ; preds = %76
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i32, i32* @rFPGA0_RFMOD, align 4
  %102 = load i32, i32* @bRFMOD, align 4
  %103 = call i32 @rtl8192_setBBreg(%struct.net_device* %100, i32 %101, i32 %102, i32 1)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = load i32, i32* @rFPGA1_RFMOD, align 4
  %106 = load i32, i32* @bRFMOD, align 4
  %107 = call i32 @rtl8192_setBBreg(%struct.net_device* %104, i32 %105, i32 %106, i32 1)
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = load i32, i32* @rCCK0_System, align 4
  %110 = load i32, i32* @bCCKSideBand, align 4
  %111 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %112 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = ashr i32 %113, 1
  %115 = call i32 @rtl8192_setBBreg(%struct.net_device* %108, i32 %109, i32 %110, i32 %114)
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = load i32, i32* @rOFDM1_LSTF, align 4
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @rtl8192_setBBreg(%struct.net_device* %116, i32 %117, i32 3072, i32 %120)
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @VERSION_8192S_BCUT, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %99
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = load i32, i32* @rFPGA0_AnalogParameter2, align 4
  %130 = call i32 @rtl8192_setBBreg(%struct.net_device* %128, i32 %129, i32 255, i32 24)
  br label %131

131:                                              ; preds = %127, %99
  br label %138

132:                                              ; preds = %76
  %133 = load i32, i32* @COMP_DBG, align 4
  %134 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %135 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %133, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %132, %131, %98
  %139 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %140 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %157 [
    i32 131, label %142
    i32 130, label %148
    i32 132, label %149
    i32 129, label %155
    i32 128, label %156
  ]

142:                                              ; preds = %138
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %145 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @PHY_SetRF8225Bandwidth(%struct.net_device* %143, i32 %146)
  br label %158

148:                                              ; preds = %138
  br label %158

149:                                              ; preds = %138
  %150 = load %struct.net_device*, %struct.net_device** %2, align 8
  %151 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %152 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @PHY_RF6052SetBandwidth(%struct.net_device* %150, i32 %153)
  br label %158

155:                                              ; preds = %138
  br label %158

156:                                              ; preds = %138
  br label %158

157:                                              ; preds = %138
  br label %158

158:                                              ; preds = %157, %156, %155, %149, %148, %142
  %159 = load i8*, i8** @FALSE, align 8
  %160 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %161 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* @COMP_SCAN, align 4
  %163 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %164

164:                                              ; preds = %158, %29, %20
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @PHY_SetRF8225Bandwidth(%struct.net_device*, i32) #1

declare dso_local i32 @PHY_RF6052SetBandwidth(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
