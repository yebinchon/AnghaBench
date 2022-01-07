; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_set_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.nf_conn = type { i32 }
%struct.anon = type { i32, i32 }
%struct.tcphdr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"nf_nat_h323: nf_nat_mangle_tcp_packet error\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"nf_nat_h323: nf_nat_mangle_udp_packet error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32, i32, i32, i32)* @set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_addr(%struct.sk_buff* %0, i8** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nf_conn*, align 8
  %16 = alloca %struct.anon, align 1
  %17 = alloca %struct.tcphdr*, align 8
  %18 = alloca %struct.tcphdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %19, i32* %14)
  store %struct.nf_conn* %20, %struct.nf_conn** %15, align 8
  %21 = load i32, i32* %12, align 4
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  store i32 %21, i32* %22, align 1
  %23 = load i32, i32* %13, align 4
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  store i32 %23, i32* %24, align 1
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPPROTO_TCP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %6
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %11, align 4
  %39 = bitcast %struct.anon* %16 to i8*
  %40 = call i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff* %35, %struct.nf_conn* %36, i32 %37, i32 %38, i32 8, i8* %39, i32 8)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = call i64 (...) @net_ratelimit()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  store i32 -1, i32* %7, align 4
  br label %99

48:                                               ; preds = %34
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call i32 @ip_hdrlen(%struct.sk_buff* %50)
  %52 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %49, i32 %51, i32 4, %struct.tcphdr* %18)
  store %struct.tcphdr* %52, %struct.tcphdr** %17, align 8
  %53 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %54 = icmp eq %struct.tcphdr* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 -1, i32* %7, align 4
  br label %99

56:                                               ; preds = %48
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @ip_hdrlen(%struct.sk_buff* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %65 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8**, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  br label %98

74:                                               ; preds = %6
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = bitcast %struct.anon* %16 to i8*
  %80 = call i32 @nf_nat_mangle_udp_packet(%struct.sk_buff* %75, %struct.nf_conn* %76, i32 %77, i32 %78, i32 8, i8* %79, i32 8)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = call i64 (...) @net_ratelimit()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  store i32 -1, i32* %7, align 4
  br label %99

88:                                               ; preds = %74
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i32 @ip_hdrlen(%struct.sk_buff* %92)
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = load i8**, i8*** %9, align 8
  store i8* %96, i8** %97, align 8
  br label %98

98:                                               ; preds = %88, %56
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %87, %55, %47
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @nf_nat_mangle_udp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
