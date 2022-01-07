; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_lblcr.c_ip_vs_lblcr_hashkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_lblcr.c_ip_vs_lblcr_hashkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nf_inet_addr = type { i32* }

@IP_VS_LBLCR_TAB_MASK = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.nf_inet_addr*)* @ip_vs_lblcr_hashkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_lblcr_hashkey(i32 %0, %union.nf_inet_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.nf_inet_addr*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %4, align 8
  %6 = load %union.nf_inet_addr*, %union.nf_inet_addr** %4, align 8
  %7 = bitcast %union.nf_inet_addr* %6 to i32*
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @ntohl(i32 %9)
  %11 = mul i64 %10, 2654435761
  %12 = load i64, i64* @IP_VS_LBLCR_TAB_MASK, align 8
  %13 = and i64 %11, %12
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
