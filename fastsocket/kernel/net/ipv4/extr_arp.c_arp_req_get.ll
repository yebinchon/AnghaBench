; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_req_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_req_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arpreq = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.neighbour = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arpreq*, %struct.net_device*)* @arp_req_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_req_get(%struct.arpreq* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.arpreq*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.neighbour*, align 8
  %7 = alloca i32, align 4
  store %struct.arpreq* %0, %struct.arpreq** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.arpreq*, %struct.arpreq** %3, align 8
  %9 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %8, i32 0, i32 3
  %10 = bitcast i32* %9 to %struct.sockaddr_in*
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.neighbour* @neigh_lookup(i32* @arp_tbl, i32* %5, %struct.net_device* %16)
  store %struct.neighbour* %17, %struct.neighbour** %6, align 8
  %18 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %19 = icmp ne %struct.neighbour* %18, null
  br i1 %19, label %20, label %57

20:                                               ; preds = %2
  %21 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %22 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %21, i32 0, i32 0
  %23 = call i32 @read_lock_bh(i32* %22)
  %24 = load %struct.arpreq*, %struct.arpreq** %3, align 8
  %25 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %27, i32 %30, i32 %33)
  %35 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %36 = call i32 @arp_state_to_flags(%struct.neighbour* %35)
  %37 = load %struct.arpreq*, %struct.arpreq** %3, align 8
  %38 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %40 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %39, i32 0, i32 0
  %41 = call i32 @read_unlock_bh(i32* %40)
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.arpreq*, %struct.arpreq** %3, align 8
  %46 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.arpreq*, %struct.arpreq** %3, align 8
  %49 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strlcpy(i32 %50, i32 %53, i32 4)
  %55 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %56 = call i32 @neigh_release(%struct.neighbour* %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %20, %2
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.neighbour* @neigh_lookup(i32*, i32*, %struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @arp_state_to_flags(%struct.neighbour*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
