; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_handle_channel_custom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_handle_channel_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_regdomain = type { i32 }
%struct.ieee80211_reg_rule = type { i32, %struct.ieee80211_freq_range, %struct.ieee80211_power_rule }
%struct.ieee80211_freq_range = type { i32 }
%struct.ieee80211_power_rule = type { i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"Disabling freq %d MHz as custom regd has no rule that fits it\0A\00", align 1
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ieee80211_channel*, %struct.ieee80211_regdomain*)* @handle_channel_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_channel_custom(%struct.wiphy* %0, %struct.ieee80211_channel* %1, %struct.ieee80211_regdomain* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_reg_rule*, align 8
  %9 = alloca %struct.ieee80211_power_rule*, align 8
  %10 = alloca %struct.ieee80211_freq_range*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store %struct.ieee80211_regdomain* %2, %struct.ieee80211_regdomain** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.ieee80211_reg_rule* null, %struct.ieee80211_reg_rule** %8, align 8
  store %struct.ieee80211_power_rule* null, %struct.ieee80211_power_rule** %9, align 8
  store %struct.ieee80211_freq_range* null, %struct.ieee80211_freq_range** %10, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MHZ_TO_KHZ(i32 %14)
  %16 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %17 = call %struct.ieee80211_reg_rule* @freq_reg_info_regd(%struct.wiphy* %11, i32 %15, %struct.ieee80211_regdomain* %16)
  store %struct.ieee80211_reg_rule* %17, %struct.ieee80211_reg_rule** %8, align 8
  %18 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %19 = call i64 @IS_ERR(%struct.ieee80211_reg_rule* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @REG_DBG_PRINT(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %91

29:                                               ; preds = %3
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %31 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %32 = call i32 @chan_reg_rule_print_dbg(%struct.ieee80211_channel* %30, %struct.ieee80211_reg_rule* %31)
  %33 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %33, i32 0, i32 2
  store %struct.ieee80211_power_rule* %34, %struct.ieee80211_power_rule** %9, align 8
  %35 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %35, i32 0, i32 1
  store %struct.ieee80211_freq_range* %36, %struct.ieee80211_freq_range** %10, align 8
  %37 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %38 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MHZ_TO_KHZ(i32 40)
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %29
  %45 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %46 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @MHZ_TO_KHZ(i32 80)
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %56 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MHZ_TO_KHZ(i32 160)
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @map_regdom_flags(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %9, align 8
  %76 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @MBI_TO_DBI(i32 %77)
  %79 = trunc i64 %78 to i32
  %80 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %9, align 8
  %83 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @MBM_TO_DBM(i32 %84)
  %86 = trunc i64 %85 to i32
  %87 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %90 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %64, %21
  ret void
}

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info_regd(%struct.wiphy*, i32, %struct.ieee80211_regdomain*) #1

declare dso_local i32 @MHZ_TO_KHZ(i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_reg_rule*) #1

declare dso_local i32 @REG_DBG_PRINT(i8*, i32) #1

declare dso_local i32 @chan_reg_rule_print_dbg(%struct.ieee80211_channel*, %struct.ieee80211_reg_rule*) #1

declare dso_local i32 @map_regdom_flags(i32) #1

declare dso_local i64 @MBI_TO_DBI(i32) #1

declare dso_local i64 @MBM_TO_DBM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
