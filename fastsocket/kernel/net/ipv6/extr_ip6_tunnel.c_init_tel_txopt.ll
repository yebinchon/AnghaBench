; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_init_tel_txopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_init_tel_txopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_tel_txoption = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ipv6_opt_hdr* }
%struct.ipv6_opt_hdr = type { i32 }

@IPV6_TLV_TNL_ENCAP_LIMIT = common dso_local global i32 0, align 4
@IPV6_TLV_PADN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipv6_tel_txoption*, i32)* @init_tel_txopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tel_txopt(%struct.ipv6_tel_txoption* %0, i32 %1) #0 {
  %3 = alloca %struct.ipv6_tel_txoption*, align 8
  %4 = alloca i32, align 4
  store %struct.ipv6_tel_txoption* %0, %struct.ipv6_tel_txoption** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ipv6_tel_txoption*, %struct.ipv6_tel_txoption** %3, align 8
  %6 = call i32 @memset(%struct.ipv6_tel_txoption* %5, i32 0, i32 24)
  %7 = load i32, i32* @IPV6_TLV_TNL_ENCAP_LIMIT, align 4
  %8 = load %struct.ipv6_tel_txoption*, %struct.ipv6_tel_txoption** %3, align 8
  %9 = getelementptr inbounds %struct.ipv6_tel_txoption, %struct.ipv6_tel_txoption* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  store i32 %7, i32* %11, align 4
  %12 = load %struct.ipv6_tel_txoption*, %struct.ipv6_tel_txoption** %3, align 8
  %13 = getelementptr inbounds %struct.ipv6_tel_txoption, %struct.ipv6_tel_txoption* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ipv6_tel_txoption*, %struct.ipv6_tel_txoption** %3, align 8
  %18 = getelementptr inbounds %struct.ipv6_tel_txoption, %struct.ipv6_tel_txoption* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @IPV6_TLV_PADN, align 4
  %22 = load %struct.ipv6_tel_txoption*, %struct.ipv6_tel_txoption** %3, align 8
  %23 = getelementptr inbounds %struct.ipv6_tel_txoption, %struct.ipv6_tel_txoption* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ipv6_tel_txoption*, %struct.ipv6_tel_txoption** %3, align 8
  %27 = getelementptr inbounds %struct.ipv6_tel_txoption, %struct.ipv6_tel_txoption* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 6
  store i32 1, i32* %29, align 4
  %30 = load %struct.ipv6_tel_txoption*, %struct.ipv6_tel_txoption** %3, align 8
  %31 = getelementptr inbounds %struct.ipv6_tel_txoption, %struct.ipv6_tel_txoption* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to %struct.ipv6_opt_hdr*
  %34 = load %struct.ipv6_tel_txoption*, %struct.ipv6_tel_txoption** %3, align 8
  %35 = getelementptr inbounds %struct.ipv6_tel_txoption, %struct.ipv6_tel_txoption* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store %struct.ipv6_opt_hdr* %33, %struct.ipv6_opt_hdr** %36, align 8
  %37 = load %struct.ipv6_tel_txoption*, %struct.ipv6_tel_txoption** %3, align 8
  %38 = getelementptr inbounds %struct.ipv6_tel_txoption, %struct.ipv6_tel_txoption* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 8, i32* %39, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ipv6_tel_txoption*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
