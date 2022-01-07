; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c___cfg80211_unlink_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c___cfg80211_unlink_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.cfg80211_internal_bss = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.cfg80211_internal_bss*)* @__cfg80211_unlink_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cfg80211_unlink_bss(%struct.cfg80211_registered_device* %0, %struct.cfg80211_internal_bss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.cfg80211_internal_bss*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.cfg80211_internal_bss* %1, %struct.cfg80211_internal_bss** %5, align 8
  %6 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %7 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %6, i32 0, i32 1
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %10 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %9, i32 0, i32 2
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %15 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %36

20:                                               ; preds = %13
  %21 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %22 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %21, i32 0, i32 2
  %23 = call i32 @list_del_init(i32* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %26 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %25, i32 0, i32 1
  %27 = call i32 @list_del_init(i32* %26)
  %28 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %29 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %28, i32 0, i32 0
  %30 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %31 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %30, i32 0, i32 0
  %32 = call i32 @rb_erase(i32* %29, i32* %31)
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %34 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %5, align 8
  %35 = call i32 @bss_ref_put(%struct.cfg80211_registered_device* %33, %struct.cfg80211_internal_bss* %34)
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %24, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @bss_ref_put(%struct.cfg80211_registered_device*, %struct.cfg80211_internal_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
