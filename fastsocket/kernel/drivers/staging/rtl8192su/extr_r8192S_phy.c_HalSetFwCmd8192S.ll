; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_HalSetFwCmd8192S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_HalSetFwCmd8192S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i64 }

@COMP_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"-->HalSetFwCmd8192S(): Set FW Cmd(%x), SetFwCmdInProgress(%d)\0A\00", align 1
@FW_CMD_DIG_HALT = common dso_local global i64 0, align 8
@FW_CMD_DIG_RESUME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"<--HalSetFwCmd8192S(): Set FW Cmd(%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"HalSetFwCmd8192S(): previous workitem not finish!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"HalSetFwCmd8192S(): Wait too logn to set FW CMD\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"<--HalSetFwCmd8192S(): Set FW Cmd(%#x)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HalSetFwCmd8192S(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 1000, i64* %8, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load i32, i32* @COMP_CMD, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %17, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @FW_CMD_DIG_HALT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @FW_CMD_DIG_RESUME, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %16
  %31 = load i32, i32* @COMP_CMD, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  store i32 0, i32* %3, align 4
  br label %74

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %41, %42
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i1 [ false, %35 ], [ %43, %40 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, i32* @COMP_CMD, align 4
  %48 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

49:                                               ; preds = %44
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @COMP_CMD, align 4
  %55 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %49
  %57 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %58 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @COMP_ERR, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  store i32 0, i32* %3, align 4
  br label %74

65:                                               ; preds = %56
  %66 = load i64, i64* @TRUE, align 8
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i32 @phy_SetFwCmdIOCallback(%struct.net_device* %72)
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %61, %46, %30, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @phy_SetFwCmdIOCallback(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
