; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_addr_v4map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_addr_v4map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sock = type { i64 }
%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_sock*, %union.sctp_addr*)* @sctp_v6_addr_v4map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v6_addr_v4map(%struct.sctp_sock* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca %struct.sctp_sock*, align 8
  %4 = alloca %union.sctp_addr*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %3, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %4, align 8
  %5 = load %struct.sctp_sock*, %struct.sctp_sock** %3, align 8
  %6 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i64, i64* @AF_INET, align 8
  %11 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %12 = bitcast %union.sctp_addr* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %10, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %18 = call i32 @sctp_v4_map_v6(%union.sctp_addr* %17)
  br label %19

19:                                               ; preds = %16, %9, %2
  ret void
}

declare dso_local i32 @sctp_v4_map_v6(%union.sctp_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
