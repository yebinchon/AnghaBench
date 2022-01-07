; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { i32 }
%struct.ip6_tnl_net = type { %struct.ip6_tnl*** }
%struct.ip6_tnl_parm = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip6_tnl** (%struct.ip6_tnl_net*, %struct.ip6_tnl_parm*)* @ip6_tnl_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip6_tnl** @ip6_tnl_bucket(%struct.ip6_tnl_net* %0, %struct.ip6_tnl_parm* %1) #0 {
  %3 = alloca %struct.ip6_tnl_net*, align 8
  %4 = alloca %struct.ip6_tnl_parm*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ip6_tnl_net* %0, %struct.ip6_tnl_net** %3, align 8
  store %struct.ip6_tnl_parm* %1, %struct.ip6_tnl_parm** %4, align 8
  %9 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %10 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %9, i32 0, i32 1
  store %struct.in6_addr* %10, %struct.in6_addr** %5, align 8
  %11 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %12 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %11, i32 0, i32 0
  store %struct.in6_addr* %12, %struct.in6_addr** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %14 = call i32 @ipv6_addr_any(%struct.in6_addr* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %18 = call i32 @ipv6_addr_any(%struct.in6_addr* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %2
  store i32 1, i32* %8, align 4
  %21 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %22 = call i32 @HASH(%struct.in6_addr* %21)
  %23 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %24 = call i32 @HASH(%struct.in6_addr* %23)
  %25 = xor i32 %22, %24
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %3, align 8
  %28 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %27, i32 0, i32 0
  %29 = load %struct.ip6_tnl***, %struct.ip6_tnl**** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ip6_tnl**, %struct.ip6_tnl*** %29, i64 %31
  %33 = load %struct.ip6_tnl**, %struct.ip6_tnl*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ip6_tnl*, %struct.ip6_tnl** %33, i64 %35
  ret %struct.ip6_tnl** %36
}

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @HASH(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
