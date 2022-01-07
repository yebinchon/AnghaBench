; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_locate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.TYPE_2__, %struct.ip6_tnl* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net = type { i32 }
%struct.ip6_tnl_parm = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.ip6_tnl_net = type { i32 }

@ip6_tnl_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip6_tnl* (%struct.net*, %struct.ip6_tnl_parm*, i32)* @ip6_tnl_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip6_tnl* @ip6_tnl_locate(%struct.net* %0, %struct.ip6_tnl_parm* %1, i32 %2) #0 {
  %4 = alloca %struct.ip6_tnl*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ip6_tnl_parm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.ip6_tnl*, align 8
  %11 = alloca %struct.ip6_tnl_net*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ip6_tnl_parm* %1, %struct.ip6_tnl_parm** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %6, align 8
  %13 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %12, i32 0, i32 1
  store %struct.in6_addr* %13, %struct.in6_addr** %8, align 8
  %14 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %6, align 8
  %15 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %14, i32 0, i32 0
  store %struct.in6_addr* %15, %struct.in6_addr** %9, align 8
  %16 = load %struct.net*, %struct.net** %5, align 8
  %17 = load i32, i32* @ip6_tnl_net_id, align 4
  %18 = call %struct.ip6_tnl_net* @net_generic(%struct.net* %16, i32 %17)
  store %struct.ip6_tnl_net* %18, %struct.ip6_tnl_net** %11, align 8
  %19 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %20 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %6, align 8
  %21 = call %struct.ip6_tnl** @ip6_tnl_bucket(%struct.ip6_tnl_net* %19, %struct.ip6_tnl_parm* %20)
  %22 = load %struct.ip6_tnl*, %struct.ip6_tnl** %21, align 8
  store %struct.ip6_tnl* %22, %struct.ip6_tnl** %10, align 8
  br label %23

23:                                               ; preds = %43, %3
  %24 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %25 = icmp ne %struct.ip6_tnl* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %28 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %29 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i64 @ipv6_addr_equal(%struct.in6_addr* %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %35 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %36 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i64 @ipv6_addr_equal(%struct.in6_addr* %34, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  store %struct.ip6_tnl* %41, %struct.ip6_tnl** %4, align 8
  br label %55

42:                                               ; preds = %33, %26
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %45 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %44, i32 0, i32 1
  %46 = load %struct.ip6_tnl*, %struct.ip6_tnl** %45, align 8
  store %struct.ip6_tnl* %46, %struct.ip6_tnl** %10, align 8
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store %struct.ip6_tnl* null, %struct.ip6_tnl** %4, align 8
  br label %55

51:                                               ; preds = %47
  %52 = load %struct.net*, %struct.net** %5, align 8
  %53 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %6, align 8
  %54 = call %struct.ip6_tnl* @ip6_tnl_create(%struct.net* %52, %struct.ip6_tnl_parm* %53)
  store %struct.ip6_tnl* %54, %struct.ip6_tnl** %4, align 8
  br label %55

55:                                               ; preds = %51, %50, %40
  %56 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  ret %struct.ip6_tnl* %56
}

declare dso_local %struct.ip6_tnl_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.ip6_tnl** @ip6_tnl_bucket(%struct.ip6_tnl_net*, %struct.ip6_tnl_parm*) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

declare dso_local %struct.ip6_tnl* @ip6_tnl_create(%struct.net*, %struct.ip6_tnl_parm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
