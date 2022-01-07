; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_map_sip_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_map_sip_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32*, i32)* @map_sip_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_sip_addr(%struct.sk_buff* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.nf_inet_addr, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %16, i32* %10)
  store %struct.nf_conn* %17, %struct.nf_conn** %11, align 8
  %18 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @ct_sip_parse_header_uri(%struct.nf_conn* %18, i8* %20, i32* null, i32 %22, i32 %23, i32* null, i32* %13, i32* %12, %union.nf_inet_addr* %14, i32* %15)
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %35

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @map_addr(%struct.sk_buff* %28, i8** %29, i32* %30, i32 %31, i32 %32, %union.nf_inet_addr* %14, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %26
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @ct_sip_parse_header_uri(%struct.nf_conn*, i8*, i32*, i32, i32, i32*, i32*, i32*, %union.nf_inet_addr*, i32*) #1

declare dso_local i32 @map_addr(%struct.sk_buff*, i8**, i32*, i32, i32, %union.nf_inet_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
