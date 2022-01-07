; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_initial_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_initial_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64*, i64 }

@dm_initial_gain.initialized = internal global i32 0, align 4
@dm_initial_gain.force_write = internal global i32 0, align 4
@dm_initial_gain.reset_cnt = internal global i64 0, align 8
@dm_digtable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DIG_CONNECT = common dso_local global i64 0, align 8
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_initial_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_initial_gain(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 8), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* @dm_initial_gain.initialized, align 4
  store i64 0, i64* @dm_initial_gain.reset_cnt, align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 0), align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %16 = load i64, i64* @DIG_CONNECT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %20 = add nsw i64 %19, 10
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 3), align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  br label %42

27:                                               ; preds = %18
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %29 = add nsw i64 %28, 10
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 3), align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 6), align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 6), align 8
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  br label %41

36:                                               ; preds = %27
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %38 = add nsw i64 %37, 10
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 3), align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  br label %41

41:                                               ; preds = %36, %34
  br label %42

42:                                               ; preds = %41, %25
  br label %55

43:                                               ; preds = %14
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  br label %54

52:                                               ; preds = %43
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 7), align 8
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  br label %54

54:                                               ; preds = %52, %46
  br label %55

55:                                               ; preds = %54, %42
  br label %62

56:                                               ; preds = %10
  %57 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %58 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 7), align 8
  br label %62

62:                                               ; preds = %56, %55
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @dm_initial_gain.reset_cnt, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  store i32 1, i32* @dm_initial_gain.force_write, align 4
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* @dm_initial_gain.reset_cnt, align 8
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 7), align 8
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %76 = call i64 @read_nic_byte(%struct.net_device* %74, i32 %75)
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* @dm_initial_gain.force_write, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 7), align 8
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @dm_initial_gain.initialized, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @dm_initial_gain.force_write, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %86, %83, %79
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @write_nic_byte(%struct.net_device* %92, i32 %93, i32 %94)
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @write_nic_byte(%struct.net_device* %96, i32 %97, i32 %98)
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @write_nic_byte(%struct.net_device* %100, i32 %101, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @write_nic_byte(%struct.net_device* %104, i32 %105, i32 %106)
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  store i64 %108, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 7), align 8
  store i32 1, i32* @dm_initial_gain.initialized, align 4
  store i32 0, i32* @dm_initial_gain.force_write, align 4
  br label %109

109:                                              ; preds = %89, %86
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
