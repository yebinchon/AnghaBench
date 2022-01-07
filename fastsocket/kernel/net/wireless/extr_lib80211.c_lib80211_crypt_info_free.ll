; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211.c_lib80211_crypt_info_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211.c_lib80211_crypt_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lib80211_crypt_info = type { %struct.lib80211_crypt_data**, i32 }
%struct.lib80211_crypt_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@NUM_WEP_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lib80211_crypt_info_free(%struct.lib80211_crypt_info* %0) #0 {
  %2 = alloca %struct.lib80211_crypt_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lib80211_crypt_data*, align 8
  store %struct.lib80211_crypt_info* %0, %struct.lib80211_crypt_info** %2, align 8
  %5 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %2, align 8
  %6 = call i32 @lib80211_crypt_quiescing(%struct.lib80211_crypt_info* %5)
  %7 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %2, align 8
  %8 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %7, i32 0, i32 1
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %2, align 8
  %11 = call i32 @lib80211_crypt_deinit_entries(%struct.lib80211_crypt_info* %10, i32 1)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %57, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @NUM_WEP_KEYS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %2, align 8
  %18 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %17, i32 0, i32 0
  %19 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %19, i64 %21
  %23 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  store %struct.lib80211_crypt_data* %23, %struct.lib80211_crypt_data** %4, align 8
  %24 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %4, align 8
  %25 = icmp ne %struct.lib80211_crypt_data* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %16
  %27 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %4, align 8
  %28 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %4, align 8
  %33 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %4, align 8
  %38 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %36(i32 %39)
  %41 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %4, align 8
  %42 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @module_put(i32 %45)
  br label %47

47:                                               ; preds = %31, %26
  %48 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %4, align 8
  %49 = call i32 @kfree(%struct.lib80211_crypt_data* %48)
  %50 = load %struct.lib80211_crypt_info*, %struct.lib80211_crypt_info** %2, align 8
  %51 = getelementptr inbounds %struct.lib80211_crypt_info, %struct.lib80211_crypt_info* %50, i32 0, i32 0
  %52 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %52, i64 %54
  store %struct.lib80211_crypt_data* null, %struct.lib80211_crypt_data** %55, align 8
  br label %56

56:                                               ; preds = %47, %16
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %12

60:                                               ; preds = %12
  ret void
}

declare dso_local i32 @lib80211_crypt_quiescing(%struct.lib80211_crypt_info*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @lib80211_crypt_deinit_entries(%struct.lib80211_crypt_info*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.lib80211_crypt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
