; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_destroy_tunnels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_destroy_tunnels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl_net = type { %struct.ip6_tnl**, %struct.ip6_tnl** }
%struct.ip6_tnl = type { i32 }

@HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_tnl_net*)* @ip6_tnl_destroy_tunnels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_tnl_destroy_tunnels(%struct.ip6_tnl_net* %0) #0 {
  %2 = alloca %struct.ip6_tnl_net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip6_tnl*, align 8
  store %struct.ip6_tnl_net* %0, %struct.ip6_tnl_net** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @HASH_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %19, %9
  %11 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %2, align 8
  %12 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %11, i32 0, i32 1
  %13 = load %struct.ip6_tnl**, %struct.ip6_tnl*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ip6_tnl*, %struct.ip6_tnl** %13, i64 %15
  %17 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  store %struct.ip6_tnl* %17, %struct.ip6_tnl** %4, align 8
  %18 = icmp ne %struct.ip6_tnl* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %21 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @unregister_netdevice(i32 %22)
  br label %10

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %2, align 8
  %30 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %29, i32 0, i32 0
  %31 = load %struct.ip6_tnl**, %struct.ip6_tnl*** %30, align 8
  %32 = getelementptr inbounds %struct.ip6_tnl*, %struct.ip6_tnl** %31, i64 0
  %33 = load %struct.ip6_tnl*, %struct.ip6_tnl** %32, align 8
  store %struct.ip6_tnl* %33, %struct.ip6_tnl** %4, align 8
  %34 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %35 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @unregister_netdevice(i32 %36)
  ret void
}

declare dso_local i32 @unregister_netdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
