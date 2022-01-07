; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_send_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_send_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.neighbour = type { i32 }
%struct.in6_addr = type { i32 }
%struct.icmp6hdr = type { i32 }

@NDISC_NEIGHBOUR_SOLICITATION = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@ND_OPT_SOURCE_LL_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ndisc_send_ns(%struct.net_device* %0, %struct.neighbour* %1, %struct.in6_addr* %2, %struct.in6_addr* %3, %struct.in6_addr* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.neighbour*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr, align 4
  %12 = alloca %struct.icmp6hdr, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.neighbour* %1, %struct.neighbour** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %9, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %10, align 8
  %13 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %12, i32 0, i32 0
  %14 = load i32, i32* @NDISC_NEIGHBOUR_SOLICITATION, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %16 = icmp eq %struct.in6_addr* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %20 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @ipv6_get_lladdr(%struct.net_device* %18, %struct.in6_addr* %11, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %41

25:                                               ; preds = %17
  store %struct.in6_addr* %11, %struct.in6_addr** %10, align 8
  br label %26

26:                                               ; preds = %25, %5
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %29 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %30 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %31 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %32 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %33 = call i32 @ipv6_addr_any(%struct.in6_addr* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ND_OPT_SOURCE_LL_ADDR, align 4
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = call i32 @__ndisc_send(%struct.net_device* %27, %struct.neighbour* %28, %struct.in6_addr* %29, %struct.in6_addr* %30, %struct.icmp6hdr* %12, %struct.in6_addr* %31, i32 %39)
  br label %41

41:                                               ; preds = %38, %24
  ret void
}

declare dso_local i64 @ipv6_get_lladdr(%struct.net_device*, %struct.in6_addr*, i32) #1

declare dso_local i32 @__ndisc_send(%struct.net_device*, %struct.neighbour*, %struct.in6_addr*, %struct.in6_addr*, %struct.icmp6hdr*, %struct.in6_addr*, i32) #1

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
