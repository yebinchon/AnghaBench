; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_v4_get_saddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_v4_get_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sock = type { i32 }
%struct.sctp_transport = type { i64, %union.sctp_addr }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.flowi = type { i32 }
%struct.rtable = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_sock*, %struct.sctp_transport*, %union.sctp_addr*, %struct.flowi*)* @sctp_v4_get_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v4_get_saddr(%struct.sctp_sock* %0, %struct.sctp_transport* %1, %union.sctp_addr* %2, %struct.flowi* %3) #0 {
  %5 = alloca %struct.sctp_sock*, align 8
  %6 = alloca %struct.sctp_transport*, align 8
  %7 = alloca %union.sctp_addr*, align 8
  %8 = alloca %struct.flowi*, align 8
  %9 = alloca %union.sctp_addr*, align 8
  %10 = alloca %struct.rtable*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %5, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %6, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %7, align 8
  store %struct.flowi* %3, %struct.flowi** %8, align 8
  %11 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %12 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %11, i32 0, i32 1
  store %union.sctp_addr* %12, %union.sctp_addr** %9, align 8
  %13 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %14 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rtable*
  store %struct.rtable* %16, %struct.rtable** %10, align 8
  %17 = load %struct.rtable*, %struct.rtable** %10, align 8
  %18 = icmp ne %struct.rtable* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load i32, i32* @AF_INET, align 4
  %21 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %22 = bitcast %union.sctp_addr* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.rtable*, %struct.rtable** %10, align 8
  %25 = getelementptr inbounds %struct.rtable, %struct.rtable* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %28 = bitcast %union.sctp_addr* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %19, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
