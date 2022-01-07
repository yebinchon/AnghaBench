; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.ip6_tnl* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ip6_tnl_net = type { %struct.ip6_tnl**, %struct.ip6_tnl** }

@ip6_tnl_net_id = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip6_tnl* (%struct.net*, %struct.in6_addr*, %struct.in6_addr*)* @ip6_tnl_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip6_tnl* @ip6_tnl_lookup(%struct.net* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.ip6_tnl*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip6_tnl*, align 8
  %11 = alloca %struct.ip6_tnl_net*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %12 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %13 = call i32 @HASH(%struct.in6_addr* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %15 = call i32 @HASH(%struct.in6_addr* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.net*, %struct.net** %5, align 8
  %17 = load i32, i32* @ip6_tnl_net_id, align 4
  %18 = call %struct.ip6_tnl_net* @net_generic(%struct.net* %16, i32 %17)
  store %struct.ip6_tnl_net* %18, %struct.ip6_tnl_net** %11, align 8
  %19 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %20 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %19, i32 0, i32 1
  %21 = load %struct.ip6_tnl**, %struct.ip6_tnl*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = xor i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ip6_tnl*, %struct.ip6_tnl** %21, i64 %25
  %27 = load %struct.ip6_tnl*, %struct.ip6_tnl** %26, align 8
  store %struct.ip6_tnl* %27, %struct.ip6_tnl** %10, align 8
  br label %28

28:                                               ; preds = %57, %3
  %29 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %30 = icmp ne %struct.ip6_tnl* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %33 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %34 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i64 @ipv6_addr_equal(%struct.in6_addr* %32, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %40 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %41 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i64 @ipv6_addr_equal(%struct.in6_addr* %39, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %47 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFF_UP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  store %struct.ip6_tnl* %55, %struct.ip6_tnl** %4, align 8
  br label %80

56:                                               ; preds = %45, %38, %31
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %59 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %58, i32 0, i32 2
  %60 = load %struct.ip6_tnl*, %struct.ip6_tnl** %59, align 8
  store %struct.ip6_tnl* %60, %struct.ip6_tnl** %10, align 8
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %11, align 8
  %63 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %62, i32 0, i32 0
  %64 = load %struct.ip6_tnl**, %struct.ip6_tnl*** %63, align 8
  %65 = getelementptr inbounds %struct.ip6_tnl*, %struct.ip6_tnl** %64, i64 0
  %66 = load %struct.ip6_tnl*, %struct.ip6_tnl** %65, align 8
  store %struct.ip6_tnl* %66, %struct.ip6_tnl** %10, align 8
  %67 = icmp ne %struct.ip6_tnl* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %70 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IFF_UP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  store %struct.ip6_tnl* %78, %struct.ip6_tnl** %4, align 8
  br label %80

79:                                               ; preds = %68, %61
  store %struct.ip6_tnl* null, %struct.ip6_tnl** %4, align 8
  br label %80

80:                                               ; preds = %79, %77, %54
  %81 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  ret %struct.ip6_tnl* %81
}

declare dso_local i32 @HASH(%struct.in6_addr*) #1

declare dso_local %struct.ip6_tnl_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
