; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_rcv_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_rcv_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { i32, %struct.ip6_tnl_parm }
%struct.ip6_tnl_parm = type { i32, i32, i32, i64 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

@IP6_TNL_F_CAP_RCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_tnl*)* @ip6_tnl_rcv_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_tnl_rcv_ctl(%struct.ip6_tnl* %0) #0 {
  %2 = alloca %struct.ip6_tnl*, align 8
  %3 = alloca %struct.ip6_tnl_parm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %2, align 8
  %7 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %8 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %7, i32 0, i32 1
  store %struct.ip6_tnl_parm* %8, %struct.ip6_tnl_parm** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %10 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.net* @dev_net(i32 %11)
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %14 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IP6_TNL_F_CAP_RCV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %1
  store %struct.net_device* null, %struct.net_device** %6, align 8
  %20 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %21 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.net*, %struct.net** %5, align 8
  %26 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %27 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.net_device* @dev_get_by_index(%struct.net* %25, i64 %28)
  store %struct.net_device* %29, %struct.net_device** %6, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %32 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %31, i32 0, i32 2
  %33 = call i64 @ipv6_addr_is_multicast(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %38 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %37, i32 0, i32 2
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = call i32 @ipv6_chk_addr(%struct.net* %36, i32* %38, %struct.net_device* %39, i32 0)
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %35, %30
  %44 = load %struct.net*, %struct.net** %5, align 8
  %45 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %46 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %45, i32 0, i32 1
  %47 = call i32 @ipv6_chk_addr(%struct.net* %44, i32* %46, %struct.net_device* null, i32 0)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %43, %35
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = icmp ne %struct.net_device* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = call i32 @dev_put(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i64) #1

declare dso_local i64 @ipv6_addr_is_multicast(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ipv6_chk_addr(%struct.net*, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
