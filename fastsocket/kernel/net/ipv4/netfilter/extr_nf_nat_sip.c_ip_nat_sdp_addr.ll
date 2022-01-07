; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_ip_nat_sdp_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_sip.c_ip_nat_sdp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.nf_inet_addr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32, i32*, i32, i32, %union.nf_inet_addr*)* @ip_nat_sdp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_nat_sdp_addr(%struct.sk_buff* %0, i8** %1, i32 %2, i32* %3, i32 %4, i32 %5, %union.nf_inet_addr* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.nf_inet_addr*, align 8
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.nf_inet_addr* %6, %union.nf_inet_addr** %15, align 8
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %19 = load %union.nf_inet_addr*, %union.nf_inet_addr** %15, align 8
  %20 = bitcast %union.nf_inet_addr* %19 to i32*
  %21 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 %21, i32* %17, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %29 = load i32, i32* %17, align 4
  %30 = call i64 @mangle_sdp_packet(%struct.sk_buff* %22, i8** %23, i32 %24, i32* %25, i32 %26, i32 %27, i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %38

33:                                               ; preds = %7
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = load i8**, i8*** %10, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @mangle_content_len(%struct.sk_buff* %34, i8** %35, i32* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %32
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @sprintf(i8*, i8*, i32*) #1

declare dso_local i64 @mangle_sdp_packet(%struct.sk_buff*, i8**, i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @mangle_content_len(%struct.sk_buff*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
