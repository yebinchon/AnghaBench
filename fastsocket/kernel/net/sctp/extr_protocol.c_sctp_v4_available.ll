; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_v4_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_v4_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_sock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@sysctl_ip_nonlocal_bind = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %struct.sctp_sock*)* @sctp_v4_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v4_available(%union.sctp_addr* %0, %struct.sctp_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %struct.sctp_sock*, align 8
  %6 = alloca i32, align 4
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %struct.sctp_sock* %1, %struct.sctp_sock** %5, align 8
  %7 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %8 = bitcast %union.sctp_addr* %7 to %struct.TYPE_5__*
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @inet_addr_type(i32* @init_net, i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %14 = bitcast %union.sctp_addr* %13 to %struct.TYPE_5__*
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @INADDR_ANY, align 4
  %19 = call i64 @htonl(i32 %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @RTN_LOCAL, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %27 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @sysctl_ip_nonlocal_bind, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %42

35:                                               ; preds = %31, %25, %21, %2
  %36 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %37 = call i32 @sctp_opt2sk(%struct.sctp_sock* %36)
  %38 = call i64 @ipv6_only_sock(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %34
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @inet_addr_type(i32*, i64) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @ipv6_only_sock(i32) #1

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
