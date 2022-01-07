; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_set_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_set_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.ip6_tnl_parm }
%struct.ip6_tnl_parm = type { i32, i64, i32, i32 }

@IP6_TNL_F_CAP_XMIT = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_RCV = common dso_local global i32 0, align 4
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LOOPBACK = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_tnl*)* @ip6_tnl_set_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_tnl_set_cap(%struct.ip6_tnl* %0) #0 {
  %2 = alloca %struct.ip6_tnl*, align 8
  %3 = alloca %struct.ip6_tnl_parm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %2, align 8
  %6 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %7 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %6, i32 0, i32 0
  store %struct.ip6_tnl_parm* %7, %struct.ip6_tnl_parm** %3, align 8
  %8 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %9 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %8, i32 0, i32 3
  %10 = call i32 @ipv6_addr_type(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %12 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %11, i32 0, i32 2
  %13 = call i32 @ipv6_addr_type(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %15 = load i32, i32* @IP6_TNL_F_CAP_RCV, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %19 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %24 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %31 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IPV6_ADDR_LOOPBACK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %77, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %51 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49, %42
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %61 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %62 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @IP6_TNL_F_CAP_RCV, align 4
  %72 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %3, align 8
  %73 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76, %49, %35, %28, %1
  ret void
}

declare dso_local i32 @ipv6_addr_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
