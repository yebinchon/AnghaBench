; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_send_rs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_send_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.icmp6hdr = type { i32 }

@NDISC_ROUTER_SOLICITATION = common dso_local global i32 0, align 4
@ND_OPT_SOURCE_LL_ADDR = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ndisc_send_rs(%struct.net_device* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.icmp6hdr, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %9 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %7, i32 0, i32 0
  %10 = load i32, i32* @NDISC_ROUTER_SOLICITATION, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %16 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ND_OPT_SOURCE_LL_ADDR, align 4
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call i32 @__ndisc_send(%struct.net_device* %14, i32* null, %struct.in6_addr* %15, %struct.in6_addr* %16, %struct.icmp6hdr* %7, i32* null, i32 %23)
  ret void
}

declare dso_local i32 @__ndisc_send(%struct.net_device*, i32*, %struct.in6_addr*, %struct.in6_addr*, %struct.icmp6hdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
