; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_dst_ifdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_dst_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.rt6_info = type { %struct.inet6_dev* }
%struct.inet6_dev = type { %struct.net_device* }
%struct.TYPE_2__ = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.net_device*, i32)* @ip6_dst_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_dst_ifdown(%struct.dst_entry* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt6_info*, align 8
  %8 = alloca %struct.inet6_dev*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.inet6_dev*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %12 = bitcast %struct.dst_entry* %11 to %struct.rt6_info*
  store %struct.rt6_info* %12, %struct.rt6_info** %7, align 8
  %13 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %14 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %13, i32 0, i32 0
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  store %struct.inet6_dev* %15, %struct.inet6_dev** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %9, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = icmp ne %struct.net_device* %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %3
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %25 = icmp ne %struct.inet6_dev* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %28 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = icmp eq %struct.net_device* %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.net_device*, %struct.net_device** %9, align 8
  %34 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %33)
  store %struct.inet6_dev* %34, %struct.inet6_dev** %10, align 8
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %36 = icmp ne %struct.inet6_dev* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %39 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %40 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %39, i32 0, i32 0
  store %struct.inet6_dev* %38, %struct.inet6_dev** %40, align 8
  %41 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %42 = call i32 @in6_dev_put(%struct.inet6_dev* %41)
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %43, %26, %23, %3
  ret void
}

declare dso_local %struct.TYPE_2__* @dev_net(%struct.net_device*) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
