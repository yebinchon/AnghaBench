; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_ieee80211_rate_control_ops_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_ieee80211_rate_control_ops_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_control_ops = type { i32 }

@ieee80211_default_rc_algo = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"rc80211_%s\00", align 1
@CONFIG_MAC80211_RC_DEFAULT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rate_control_ops* (i8*)* @ieee80211_rate_control_ops_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rate_control_ops* @ieee80211_rate_control_ops_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rate_control_ops*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** @ieee80211_default_rc_algo, align 8
  %6 = call i32 @kparam_block_sysfs_write(i8* %5)
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** @ieee80211_default_rc_algo, align 8
  store i8* %10, i8** %4, align 8
  br label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.rate_control_ops* @ieee80211_try_rate_control_ops_get(i8* %14)
  store %struct.rate_control_ops* %15, %struct.rate_control_ops** %3, align 8
  %16 = load %struct.rate_control_ops*, %struct.rate_control_ops** %3, align 8
  %17 = icmp ne %struct.rate_control_ops* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @request_module(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call %struct.rate_control_ops* @ieee80211_try_rate_control_ops_get(i8* %21)
  store %struct.rate_control_ops* %22, %struct.rate_control_ops** %3, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.rate_control_ops*, %struct.rate_control_ops** %3, align 8
  %25 = icmp ne %struct.rate_control_ops* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %2, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** @ieee80211_default_rc_algo, align 8
  %31 = call %struct.rate_control_ops* @ieee80211_try_rate_control_ops_get(i8* %30)
  store %struct.rate_control_ops* %31, %struct.rate_control_ops** %3, align 8
  br label %32

32:                                               ; preds = %29, %26, %23
  %33 = load %struct.rate_control_ops*, %struct.rate_control_ops** %3, align 8
  %34 = icmp ne %struct.rate_control_ops* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @CONFIG_MAC80211_RC_DEFAULT, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** @CONFIG_MAC80211_RC_DEFAULT, align 8
  %41 = call %struct.rate_control_ops* @ieee80211_try_rate_control_ops_get(i8* %40)
  store %struct.rate_control_ops* %41, %struct.rate_control_ops** %3, align 8
  br label %42

42:                                               ; preds = %39, %35, %32
  %43 = load i8*, i8** @ieee80211_default_rc_algo, align 8
  %44 = call i32 @kparam_unblock_sysfs_write(i8* %43)
  %45 = load %struct.rate_control_ops*, %struct.rate_control_ops** %3, align 8
  ret %struct.rate_control_ops* %45
}

declare dso_local i32 @kparam_block_sysfs_write(i8*) #1

declare dso_local %struct.rate_control_ops* @ieee80211_try_rate_control_ops_get(i8*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @kparam_unblock_sysfs_write(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
