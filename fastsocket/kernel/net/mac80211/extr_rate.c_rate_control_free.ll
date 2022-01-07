; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_control_ref = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 (i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rate_control_ref*)* @rate_control_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_free(%struct.rate_control_ref* %0) #0 {
  %2 = alloca %struct.rate_control_ref*, align 8
  store %struct.rate_control_ref* %0, %struct.rate_control_ref** %2, align 8
  %3 = load %struct.rate_control_ref*, %struct.rate_control_ref** %2, align 8
  %4 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = load %struct.rate_control_ref*, %struct.rate_control_ref** %2, align 8
  %9 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 %7(i32 %10)
  %12 = load %struct.rate_control_ref*, %struct.rate_control_ref** %2, align 8
  %13 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i32 @ieee80211_rate_control_ops_put(%struct.TYPE_6__* %14)
  %16 = load %struct.rate_control_ref*, %struct.rate_control_ref** %2, align 8
  %17 = call i32 @kfree(%struct.rate_control_ref* %16)
  ret void
}

declare dso_local i32 @ieee80211_rate_control_ops_put(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.rate_control_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
