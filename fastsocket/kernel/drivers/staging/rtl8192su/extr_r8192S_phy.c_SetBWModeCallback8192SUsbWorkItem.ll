; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_SetBWModeCallback8192SUsbWorkItem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_SetBWModeCallback8192SUsbWorkItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i8*, i32 }

@COMP_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"==>SetBWModeCallback8192SUsbWorkItem()  Switch to %s bandwidth\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"20MHz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"40MHz\00", align 1
@FALSE = common dso_local global i8* null, align 8
@BW_OPMODE = common dso_local global i64 0, align 8
@RRSR = common dso_local global i64 0, align 8
@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@COMP_DBG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"SetBWModeCallback8192SUsbWorkItem():\09\09\09\09\09\09unknown Bandwidth: %#X\0A\00", align 1
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bRFMOD = common dso_local global i32 0, align 4
@rFPGA1_RFMOD = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter2 = common dso_local global i32 0, align 4
@rCCK0_System = common dso_local global i32 0, align 4
@bCCKSideBand = common dso_local global i32 0, align 4
@rOFDM1_LSTF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"SetBWModeCallback8192SUsbWorkItem(): unknown Bandwidth: %#X\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"<==SetBWModeCallback8192SUsbWorkItem()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetBWModeCallback8192SUsbWorkItem(%struct.net_device* %0) #0 {
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
  %15 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %14)
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
  br label %150

24:                                               ; preds = %1
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %150

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
  %75 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %71, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %49, %41
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %118 [
    i32 134, label %80
    i32 133, label %92
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
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = load i32, i32* @rFPGA0_AnalogParameter2, align 4
  %91 = call i32 @rtl8192_setBBreg(%struct.net_device* %89, i32 %90, i32 255, i32 88)
  br label %124

92:                                               ; preds = %76
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = load i32, i32* @rFPGA0_RFMOD, align 4
  %95 = load i32, i32* @bRFMOD, align 4
  %96 = call i32 @rtl8192_setBBreg(%struct.net_device* %93, i32 %94, i32 %95, i32 1)
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @rFPGA1_RFMOD, align 4
  %99 = load i32, i32* @bRFMOD, align 4
  %100 = call i32 @rtl8192_setBBreg(%struct.net_device* %97, i32 %98, i32 %99, i32 1)
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load i32, i32* @rCCK0_System, align 4
  %103 = load i32, i32* @bCCKSideBand, align 4
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 1
  %108 = call i32 @rtl8192_setBBreg(%struct.net_device* %101, i32 %102, i32 %103, i32 %107)
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = load i32, i32* @rOFDM1_LSTF, align 4
  %111 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %112 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @rtl8192_setBBreg(%struct.net_device* %109, i32 %110, i32 3072, i32 %113)
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = load i32, i32* @rFPGA0_AnalogParameter2, align 4
  %117 = call i32 @rtl8192_setBBreg(%struct.net_device* %115, i32 %116, i32 255, i32 24)
  br label %124

118:                                              ; preds = %76
  %119 = load i32, i32* @COMP_DBG, align 4
  %120 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %121 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %119, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %92, %80
  %125 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %126 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %143 [
    i32 131, label %128
    i32 130, label %134
    i32 132, label %135
    i32 129, label %141
    i32 128, label %142
  ]

128:                                              ; preds = %124
  %129 = load %struct.net_device*, %struct.net_device** %2, align 8
  %130 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %131 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @PHY_SetRF8225Bandwidth(%struct.net_device* %129, i32 %132)
  br label %144

134:                                              ; preds = %124
  br label %144

135:                                              ; preds = %124
  %136 = load %struct.net_device*, %struct.net_device** %2, align 8
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @PHY_RF6052SetBandwidth(%struct.net_device* %136, i32 %139)
  br label %144

141:                                              ; preds = %124
  br label %144

142:                                              ; preds = %124
  br label %144

143:                                              ; preds = %124
  br label %144

144:                                              ; preds = %143, %142, %141, %135, %134, %128
  %145 = load i8*, i8** @FALSE, align 8
  %146 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %147 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* @COMP_SCAN, align 4
  %149 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %148, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %150

150:                                              ; preds = %144, %29, %20
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
