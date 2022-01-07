; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_set_probe_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_set_probe_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.probe_resp = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i32*, i64)* @ieee80211_set_probe_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_probe_resp(%struct.ieee80211_sub_if_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.probe_resp*, align 8
  %9 = alloca %struct.probe_resp*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  store i32 1, i32* %4, align 4
  br label %57

16:                                               ; preds = %12
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.probe_resp* @rtnl_dereference(i32 %21)
  store %struct.probe_resp* %22, %struct.probe_resp** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.probe_resp* @kzalloc(i32 %25, i32 %26)
  store %struct.probe_resp* %27, %struct.probe_resp** %8, align 8
  %28 = load %struct.probe_resp*, %struct.probe_resp** %8, align 8
  %29 = icmp ne %struct.probe_resp* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %57

33:                                               ; preds = %16
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.probe_resp*, %struct.probe_resp** %8, align 8
  %36 = getelementptr inbounds %struct.probe_resp, %struct.probe_resp* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.probe_resp*, %struct.probe_resp** %8, align 8
  %38 = getelementptr inbounds %struct.probe_resp, %struct.probe_resp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @memcpy(i32 %39, i32* %40, i64 %41)
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.probe_resp*, %struct.probe_resp** %8, align 8
  %49 = call i32 @rcu_assign_pointer(i32 %47, %struct.probe_resp* %48)
  %50 = load %struct.probe_resp*, %struct.probe_resp** %9, align 8
  %51 = icmp ne %struct.probe_resp* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %33
  %53 = load %struct.probe_resp*, %struct.probe_resp** %9, align 8
  %54 = load i32, i32* @rcu_head, align 4
  %55 = call i32 @kfree_rcu(%struct.probe_resp* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %33
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %30, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.probe_resp* @rtnl_dereference(i32) #1

declare dso_local %struct.probe_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.probe_resp*) #1

declare dso_local i32 @kfree_rcu(%struct.probe_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
