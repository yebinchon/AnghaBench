; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_conntrack.c_conntrack_addrcmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_conntrack.c_conntrack_addrcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nf_inet_addr = type { i32 }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.nf_inet_addr*, %union.nf_inet_addr*, %union.nf_inet_addr*, i32)* @conntrack_addrcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conntrack_addrcmp(%union.nf_inet_addr* %0, %union.nf_inet_addr* %1, %union.nf_inet_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.nf_inet_addr*, align 8
  %7 = alloca %union.nf_inet_addr*, align 8
  %8 = alloca %union.nf_inet_addr*, align 8
  %9 = alloca i32, align 4
  store %union.nf_inet_addr* %0, %union.nf_inet_addr** %6, align 8
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %7, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NFPROTO_IPV4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %4
  %14 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %15 = bitcast %union.nf_inet_addr* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %18 = bitcast %union.nf_inet_addr* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %16, %19
  %21 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %22 = bitcast %union.nf_inet_addr* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  br label %42

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @NFPROTO_IPV6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %33 = bitcast %union.nf_inet_addr* %32 to i32*
  %34 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %35 = bitcast %union.nf_inet_addr* %34 to i32*
  %36 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %37 = bitcast %union.nf_inet_addr* %36 to i32*
  %38 = call i64 @ipv6_masked_addr_cmp(i32* %33, i32* %35, i32* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %31, %13
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @ipv6_masked_addr_cmp(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
