; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_add_virtual_monitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_add_virtual_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_3__, %struct.ieee80211_local* }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_HW_WANT_MONITOR_VIF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-monitor\00", align 1
@IEEE80211_CHANCTX_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_add_virtual_monitor(%struct.ieee80211_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IEEE80211_HW_WANT_MONITOR_VIF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %100

21:                                               ; preds = %14
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add i64 16, %25
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ieee80211_sub_if_data* @kzalloc(i64 %26, i32 %27)
  store %struct.ieee80211_sub_if_data* %28, %struct.ieee80211_sub_if_data** %4, align 8
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %30 = icmp ne %struct.ieee80211_sub_if_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %100

34:                                               ; preds = %21
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 2
  store %struct.ieee80211_local* %35, %struct.ieee80211_local** %37, align 8
  %38 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IFNAMSIZ, align 4
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @wiphy_name(i32 %49)
  %51 = call i32 @snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %53 = call i32 @ieee80211_set_default_queues(%struct.ieee80211_sub_if_data* %52)
  %54 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %56 = call i32 @drv_add_interface(%struct.ieee80211_local* %54, %struct.ieee80211_sub_if_data* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @WARN_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %34
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %62 = call i32 @kfree(%struct.ieee80211_sub_if_data* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %100

64:                                               ; preds = %34
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %66 = call i32 @ieee80211_check_queues(%struct.ieee80211_sub_if_data* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %71 = call i32 @kfree(%struct.ieee80211_sub_if_data* %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %100

73:                                               ; preds = %64
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 2
  %77 = load i32, i32* @IEEE80211_CHANCTX_EXCLUSIVE, align 4
  %78 = call i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data* %74, i32* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %83 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %84 = call i32 @drv_remove_interface(%struct.ieee80211_local* %82, %struct.ieee80211_sub_if_data* %83)
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %86 = call i32 @kfree(%struct.ieee80211_sub_if_data* %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %100

88:                                               ; preds = %73
  %89 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %89, i32 0, i32 0
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %93 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %96 = call i32 @rcu_assign_pointer(i64 %94, %struct.ieee80211_sub_if_data* %95)
  %97 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %98 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %88, %81, %69, %60, %31, %20, %13
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @kzalloc(i64, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @wiphy_name(i32) #1

declare dso_local i32 @ieee80211_set_default_queues(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_add_interface(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_check_queues(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @drv_remove_interface(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
