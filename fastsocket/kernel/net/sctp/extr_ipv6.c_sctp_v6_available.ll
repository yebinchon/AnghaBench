; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_4__ = type { i32 (%union.sctp_addr*, %struct.sctp_sock*)* }

@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %struct.sctp_sock*)* @sctp_v6_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v6_available(%union.sctp_addr* %0, %struct.sctp_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %struct.sctp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %struct.sctp_sock* %1, %struct.sctp_sock** %5, align 8
  %8 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %9 = bitcast %union.sctp_addr* %8 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.in6_addr*
  store %struct.in6_addr* %11, %struct.in6_addr** %7, align 8
  %12 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %13 = call i32 @ipv6_addr_type(%struct.in6_addr* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %24 = icmp ne %struct.sctp_sock* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %27 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %59

31:                                               ; preds = %25, %22
  %32 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %33 = icmp ne %struct.sctp_sock* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %36 = call i32 @sctp_opt2sk(%struct.sctp_sock* %35)
  %37 = call i64 @ipv6_only_sock(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %59

40:                                               ; preds = %34, %31
  %41 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %42 = call i32 @sctp_v6_map_v4(%union.sctp_addr* %41)
  %43 = load i32, i32* @AF_INET, align 4
  %44 = call %struct.TYPE_4__* @sctp_get_af_specific(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%union.sctp_addr*, %struct.sctp_sock*)*, i32 (%union.sctp_addr*, %struct.sctp_sock*)** %45, align 8
  %47 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %48 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %49 = call i32 %46(%union.sctp_addr* %47, %struct.sctp_sock* %48)
  store i32 %49, i32* %3, align 4
  br label %59

50:                                               ; preds = %18
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %59

56:                                               ; preds = %50
  %57 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %58 = call i32 @ipv6_chk_addr(i32* @init_net, %struct.in6_addr* %57, i32* null, i32 0)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %55, %40, %39, %30, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_only_sock(i32) #1

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

declare dso_local i32 @sctp_v6_map_v4(%union.sctp_addr*) #1

declare dso_local %struct.TYPE_4__* @sctp_get_af_specific(i32) #1

declare dso_local i32 @ipv6_chk_addr(i32*, %struct.in6_addr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
