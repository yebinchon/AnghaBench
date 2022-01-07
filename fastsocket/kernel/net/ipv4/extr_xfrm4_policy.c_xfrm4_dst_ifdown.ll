; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c_xfrm4_dst_ifdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c_xfrm4_dst_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.xfrm_dst = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.in_device* }
%struct.in_device = type { %struct.net_device* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.net_device*, i32)* @xfrm4_dst_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm4_dst_ifdown(%struct.dst_entry* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_dst*, align 8
  %8 = alloca %struct.in_device*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %69

12:                                               ; preds = %3
  %13 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %14 = bitcast %struct.dst_entry* %13 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %14, %struct.xfrm_dst** %7, align 8
  %15 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %16 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.in_device*, %struct.in_device** %18, align 8
  %20 = getelementptr inbounds %struct.in_device, %struct.in_device* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = icmp eq %struct.net_device* %21, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %12
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call %struct.TYPE_8__* @dev_net(%struct.net_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.in_device* @in_dev_get(i32 %28)
  store %struct.in_device* %29, %struct.in_device** %8, align 8
  %30 = load %struct.in_device*, %struct.in_device** %8, align 8
  %31 = icmp ne %struct.in_device* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  br label %35

35:                                               ; preds = %55, %24
  %36 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %37 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.in_device*, %struct.in_device** %39, align 8
  %41 = call i32 @in_dev_put(%struct.in_device* %40)
  %42 = load %struct.in_device*, %struct.in_device** %8, align 8
  %43 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %44 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store %struct.in_device* %42, %struct.in_device** %46, align 8
  %47 = load %struct.in_device*, %struct.in_device** %8, align 8
  %48 = call i32 @in_dev_hold(%struct.in_device* %47)
  %49 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %50 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %54, %struct.xfrm_dst** %7, align 8
  br label %55

55:                                               ; preds = %35
  %56 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %57 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %35, label %62

62:                                               ; preds = %55
  %63 = load %struct.in_device*, %struct.in_device** %8, align 8
  %64 = call i32 @__in_dev_put(%struct.in_device* %63)
  br label %65

65:                                               ; preds = %62, %12
  %66 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = call i32 @xfrm_dst_ifdown(%struct.dst_entry* %66, %struct.net_device* %67)
  br label %69

69:                                               ; preds = %65, %11
  ret void
}

declare dso_local %struct.in_device* @in_dev_get(i32) #1

declare dso_local %struct.TYPE_8__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

declare dso_local i32 @in_dev_hold(%struct.in_device*) #1

declare dso_local i32 @__in_dev_put(%struct.in_device*) #1

declare dso_local i32 @xfrm_dst_ifdown(%struct.dst_entry*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
