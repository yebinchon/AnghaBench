; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_bb_initialgain_backup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_bb_initialgain_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@bMaskByte0 = common dso_local global i32 0, align 4
@dm_digtable = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DIG_ALGO_BY_RSSI = common dso_local global i64 0, align 8
@UFWP = common dso_local global i32 0, align 4
@bMaskByte1 = common dso_local global i32 0, align 4
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@rCCK0_CCA = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xc50 is %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xc58 is %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xc60 is %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xc68 is %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xa0a is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_bb_initialgain_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_bb_initialgain_backup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load i32, i32* @bMaskByte0, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  %9 = load i64, i64* @DIG_ALGO_BY_RSSI, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %88

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @UFWP, align 4
  %15 = load i32, i32* @bMaskByte1, align 4
  %16 = call i32 @rtl8192_setBBreg(%struct.net_device* %13, i32 %14, i32 %15, i32 8)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %17, i32 %18, i32 %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  store i8* %21, i8** %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %25, i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i8* %29, i8** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %33, i32 %34, i32 %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %41, i32 %42, i32 %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* @bMaskByte2, align 4
  store i32 %49, i32* %4, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i32, i32* @rCCK0_CCA, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %50, i32 %51, i32 %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @COMP_DIG, align 4
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @RT_TRACE(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @COMP_DIG, align 4
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @RT_TRACE(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @COMP_DIG, align 4
  %71 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %72 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @RT_TRACE(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @COMP_DIG, align 4
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @RT_TRACE(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @COMP_DIG, align 4
  %83 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %84 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @RT_TRACE(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i64 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
