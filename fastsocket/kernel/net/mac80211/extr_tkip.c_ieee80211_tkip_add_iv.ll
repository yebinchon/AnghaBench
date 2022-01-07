; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tkip.c_ieee80211_tkip_add_iv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tkip.c_ieee80211_tkip_add_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_tkip_add_iv(i32* %0, %struct.ieee80211_key* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_key*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %4, align 8
  %5 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @write_tkip_iv(i32* %10, i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 6
  %23 = or i32 %22, 32
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %3, align 8
  store i32 %23, i32* %24, align 4
  %26 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @put_unaligned_le32(i32 %31, i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  ret i32* %35
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32* @write_tkip_iv(i32*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
