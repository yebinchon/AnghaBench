; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_read_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_read_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i8* }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i8*, i8*, i64 }

@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"====> ReadAdapterInfo8192SUsb\0A\00", align 1
@PMC_FSM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Chip Version ID: 0x%2x\0A\00", align 1
@EPROM_CMD = common dso_local global i32 0, align 4
@CmdEERPOMSEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Boot from EEPROM\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Boot from EFUSE\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@CmdEEPROM_En = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Autoload OK!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"AutoLoad Fail reported from CR9346!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Update shadow map for EFuse future use!!\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"<==== ReadAdapterInfo8192SUsb\0A\00", align 1
@Adapter = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@EEPROM_CHANNEL_PLAN_BY_HW_MASK = common dso_local global i32 0, align 4
@RT_CHANNEL_DOMAIN_MAX = common dso_local global i64 0, align 8
@pHalData = common dso_local global %struct.TYPE_8__* null, align 8
@pMgntInfo = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192SU_read_eeprom_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192SU_read_eeprom_info(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load i32, i32* @COMP_INIT, align 4
  %8 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @PMC_FSM, align 4
  %11 = call i32 @read_nic_dword(%struct.net_device* %9, i32 %10)
  %12 = ashr i32 %11, 16
  %13 = and i32 %12, 15
  %14 = sext i32 %13 to i64
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* @COMP_INIT, align 4
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i32, i32* @EPROM_CMD, align 4
  %24 = call i32 @read_nic_byte(%struct.net_device* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CmdEERPOMSEL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @COMP_INIT, align 4
  %31 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i8*, i8** @TRUE, align 8
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @COMP_INIT, align 4
  %37 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i8*, i8** @FALSE, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @CmdEEPROM_En, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i32, i32* @COMP_INIT, align 4
  %48 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @rtl8192SU_ReadAdapterInfo8192SUsb(%struct.net_device* %52)
  br label %72

54:                                               ; preds = %41
  %55 = load i32, i32* @COMP_INIT, align 4
  %56 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i8*, i8** @TRUE, align 8
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 @rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail(%struct.net_device* %60)
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @COMP_INIT, align 4
  %68 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = call i32 @EFUSE_ShadowMapUpdate(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %66, %54
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, i32* @COMP_INIT, align 4
  %74 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8192SU_ReadAdapterInfo8192SUsb(%struct.net_device*) #1

declare dso_local i32 @rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail(%struct.net_device*) #1

declare dso_local i32 @EFUSE_ShadowMapUpdate(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
