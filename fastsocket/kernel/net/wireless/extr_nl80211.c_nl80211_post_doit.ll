; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_post_doit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_post_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_ops = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.wireless_dev** }
%struct.wireless_dev = type { %struct.wireless_dev* }

@NL80211_FLAG_NEED_WDEV = common dso_local global i32 0, align 4
@NL80211_FLAG_NEED_RTNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genl_ops*, %struct.sk_buff*, %struct.genl_info*)* @nl80211_post_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_post_doit(%struct.genl_ops* %0, %struct.sk_buff* %1, %struct.genl_info* %2) #0 {
  %4 = alloca %struct.genl_ops*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  store %struct.genl_ops* %0, %struct.genl_ops** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.genl_info* %2, %struct.genl_info** %6, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 0
  %10 = load %struct.wireless_dev**, %struct.wireless_dev*** %9, align 8
  %11 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %10, i64 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %13 = icmp ne %struct.wireless_dev* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev**, %struct.wireless_dev*** %16, align 8
  %18 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %17, i64 0
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %20 = call i32 @cfg80211_unlock_rdev(%struct.wireless_dev* %19)
  br label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load %struct.wireless_dev**, %struct.wireless_dev*** %23, align 8
  %25 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %24, i64 1
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %25, align 8
  %27 = icmp ne %struct.wireless_dev* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %21
  %29 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %30 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NL80211_FLAG_NEED_WDEV, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load %struct.wireless_dev**, %struct.wireless_dev*** %37, align 8
  %39 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %38, i64 1
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %39, align 8
  store %struct.wireless_dev* %40, %struct.wireless_dev** %7, align 8
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 0
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %42, align 8
  %44 = icmp ne %struct.wireless_dev* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %47 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %46, i32 0, i32 0
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %47, align 8
  %49 = call i32 @dev_put(%struct.wireless_dev* %48)
  br label %50

50:                                               ; preds = %45, %35
  br label %58

51:                                               ; preds = %28
  %52 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 0
  %54 = load %struct.wireless_dev**, %struct.wireless_dev*** %53, align 8
  %55 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %54, i64 1
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %55, align 8
  %57 = call i32 @dev_put(%struct.wireless_dev* %56)
  br label %58

58:                                               ; preds = %51, %50
  br label %59

59:                                               ; preds = %58, %21
  %60 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %61 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NL80211_FLAG_NEED_RTNL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 (...) @rtnl_unlock()
  br label %68

68:                                               ; preds = %66, %59
  ret void
}

declare dso_local i32 @cfg80211_unlock_rdev(%struct.wireless_dev*) #1

declare dso_local i32 @dev_put(%struct.wireless_dev*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
