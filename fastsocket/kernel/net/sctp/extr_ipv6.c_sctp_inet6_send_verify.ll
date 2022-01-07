; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_inet6_send_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_inet6_send_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sock = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sctp_af* }
%struct.sctp_af = type { i32 }
%union.sctp_addr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_sock*, %union.sctp_addr*)* @sctp_inet6_send_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_inet6_send_verify(%struct.sctp_sock* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_sock*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_af*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  store %struct.sctp_af* null, %struct.sctp_af** %6, align 8
  %9 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %10 = bitcast %union.sctp_addr* %9 to %struct.TYPE_6__*
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET6, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %17 = bitcast %union.sctp_addr* %16 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.sctp_af* @sctp_get_af_specific(i64 %19)
  store %struct.sctp_af* %20, %struct.sctp_af** %6, align 8
  br label %55

21:                                               ; preds = %2
  %22 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %23 = bitcast %union.sctp_addr* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @ipv6_addr_type(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %21
  %31 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %32 = bitcast %union.sctp_addr* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %59

37:                                               ; preds = %30
  %38 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %39 = bitcast %union.sctp_addr* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %41)
  store %struct.net_device* %42, %struct.net_device** %8, align 8
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %59

46:                                               ; preds = %37
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = call i32 @dev_put(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %46, %21
  %50 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %51 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.sctp_af*, %struct.sctp_af** %53, align 8
  store %struct.sctp_af* %54, %struct.sctp_af** %6, align 8
  br label %55

55:                                               ; preds = %49, %15
  %56 = load %struct.sctp_af*, %struct.sctp_af** %6, align 8
  %57 = icmp ne %struct.sctp_af* %56, null
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %45, %36
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i64) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
