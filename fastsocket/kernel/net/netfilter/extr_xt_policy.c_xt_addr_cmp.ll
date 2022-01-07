; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_policy.c_xt_addr_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_policy.c_xt_addr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nf_inet_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.nf_inet_addr*, %union.nf_inet_addr*, %union.nf_inet_addr*, i16)* @xt_addr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_addr_cmp(%union.nf_inet_addr* %0, %union.nf_inet_addr* %1, %union.nf_inet_addr* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.nf_inet_addr*, align 8
  %7 = alloca %union.nf_inet_addr*, align 8
  %8 = alloca %union.nf_inet_addr*, align 8
  %9 = alloca i16, align 2
  store %union.nf_inet_addr* %0, %union.nf_inet_addr** %6, align 8
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %7, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %8, align 8
  store i16 %3, i16* %9, align 2
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  switch i32 %11, label %36 [
    i32 129, label %12
    i32 128, label %26
  ]

12:                                               ; preds = %4
  %13 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %14 = bitcast %union.nf_inet_addr* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %17 = bitcast %union.nf_inet_addr* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %15, %18
  %20 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %21 = bitcast %union.nf_inet_addr* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %37

26:                                               ; preds = %4
  %27 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %28 = bitcast %union.nf_inet_addr* %27 to i32*
  %29 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %30 = bitcast %union.nf_inet_addr* %29 to i32*
  %31 = load %union.nf_inet_addr*, %union.nf_inet_addr** %8, align 8
  %32 = bitcast %union.nf_inet_addr* %31 to i32*
  %33 = call i32 @ipv6_masked_addr_cmp(i32* %28, i32* %30, i32* %32)
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %26, %12
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @ipv6_masked_addr_cmp(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
