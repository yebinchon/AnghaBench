; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211.c_lib80211_crypt_delayed_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211.c_lib80211_crypt_delayed_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lib80211_crypt_info = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.lib80211_crypt_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lib80211_crypt_delayed_deinit(%struct.lib80211_crypt_info* %0, %struct.lib80211_crypt_data** %1) #0 {
  %3 = alloca %struct.lib80211_crypt_info*, align 8
  %4 = alloca %struct.lib80211_crypt_data**, align 8
  %5 = alloca %struct.lib80211_crypt_data*, align 8
  %6 = alloca i64, align 8
  store %struct.lib80211_crypt_info* %0, %struct.lib80211_crypt_info** %3, align 8
  store %struct.lib80211_crypt_data** %1, %struct.lib80211_crypt_data*** %4, align 8
  %7 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %4, align 8
  %8 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %9 = icmp eq %struct.lib80211_crypt_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %4, align 8
  %13 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  store %struct.lib80211_crypt_data* %13, %struct.lib80211_crypt_data** %5, align 8
  %14 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %4, align 8
  store %struct.lib80211_crypt_data* null, %struct.lib80211_crypt_data** %14, align 8
  %15 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %3, align 8
  %16 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %3, align 8
  %21 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %11
  %25 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %5, align 8
  %26 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %25, i32 0, i32 0
  %27 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %3, align 8
  %28 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %27, i32 0, i32 2
  %29 = call i32 @list_add(i32* %26, i32* %28)
  %30 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %3, align 8
  %31 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %30, i32 0, i32 1
  %32 = call i32 @timer_pending(%struct.TYPE_3__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %24
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* @HZ, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %3, align 8
  %39 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %3, align 8
  %42 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %41, i32 0, i32 1
  %43 = call i32 @add_timer(%struct.TYPE_3__* %42)
  br label %44

44:                                               ; preds = %34, %24
  br label %45

45:                                               ; preds = %44, %11
  %46 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %3, align 8
  %47 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %45, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
