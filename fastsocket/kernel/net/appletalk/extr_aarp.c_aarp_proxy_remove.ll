; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c_aarp_proxy_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c_aarp_proxy_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atalk_addr = type { i32 }
%struct.aarp_entry = type { i64 }

@AARP_HASH_SIZE = common dso_local global i32 0, align 4
@aarp_lock = common dso_local global i32 0, align 4
@proxies = common dso_local global i32* null, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aarp_proxy_remove(%struct.net_device* %0, %struct.atalk_addr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atalk_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aarp_entry*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.atalk_addr* %1, %struct.atalk_addr** %4, align 8
  %7 = load %struct.atalk_addr*, %struct.atalk_addr** %4, align 8
  %8 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AARP_HASH_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = srem i32 %9, %11
  store i32 %12, i32* %5, align 4
  %13 = call i32 @write_lock_bh(i32* @aarp_lock)
  %14 = load i32*, i32** @proxies, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load %struct.atalk_addr*, %struct.atalk_addr** %4, align 8
  %21 = call %struct.aarp_entry* @__aarp_find_entry(i32 %18, %struct.net_device* %19, %struct.atalk_addr* %20)
  store %struct.aarp_entry* %21, %struct.aarp_entry** %6, align 8
  %22 = load %struct.aarp_entry*, %struct.aarp_entry** %6, align 8
  %23 = icmp ne %struct.aarp_entry* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i64, i64* @jiffies, align 8
  %26 = sub nsw i64 %25, 1
  %27 = load %struct.aarp_entry*, %struct.aarp_entry** %6, align 8
  %28 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %2
  %30 = call i32 @write_unlock_bh(i32* @aarp_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.aarp_entry* @__aarp_find_entry(i32, %struct.net_device*, %struct.atalk_addr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
