; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_handle_response_icmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_handle_response_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_protocol = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"shouldn't reach here, because the box is on the half connection in the tun/dr module.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Forward ICMP: failed checksum from %s!\0A\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %union.nf_inet_addr*, i64, %struct.ip_vs_conn*, %struct.ip_vs_protocol*, i32, i32)* @handle_response_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_response_icmp(i32 %0, %struct.sk_buff* %1, %union.nf_inet_addr* %2, i64 %3, %struct.ip_vs_conn* %4, %struct.ip_vs_protocol* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %union.nf_inet_addr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ip_vs_conn*, align 8
  %14 = alloca %struct.ip_vs_protocol*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.ip_vs_conn* %4, %struct.ip_vs_conn** %13, align 8
  store %struct.ip_vs_protocol* %5, %struct.ip_vs_protocol** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* @NF_DROP, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %20 = call i64 @IP_VS_FWD_METHOD(%struct.ip_vs_conn* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = call i32 @skb_csum_unnecessary(%struct.sk_buff* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call i64 @ip_vs_checksum_complete(%struct.sk_buff* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %36 = call i32 @IP_VS_DBG_ADDR(i32 %34, %union.nf_inet_addr* %35)
  %37 = call i32 @IP_VS_DBG_BUF(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %72

38:                                               ; preds = %28, %24
  %39 = load i64, i64* @IPPROTO_TCP, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @IPPROTO_UDP, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @IPPROTO_SCTP, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46, %42, %38
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = add i64 %52, 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @skb_make_writable(%struct.sk_buff* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %72

61:                                               ; preds = %55
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %14, align 8
  %64 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %65 = call i32 @ip_vs_nat_icmp(%struct.sk_buff* %62, %struct.ip_vs_protocol* %63, %struct.ip_vs_conn* %64, i32 1)
  %66 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i32 @ip_vs_out_stats(%struct.ip_vs_conn* %66, %struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %61, %60, %33
  %73 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %74 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %73)
  %75 = load i32, i32* %17, align 4
  ret i32 %75
}

declare dso_local i64 @IP_VS_FWD_METHOD(%struct.ip_vs_conn*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i64 @ip_vs_checksum_complete(%struct.sk_buff*, i32) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, %union.nf_inet_addr*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_vs_nat_icmp(%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @ip_vs_out_stats(%struct.ip_vs_conn*, %struct.sk_buff*) #1

declare dso_local i32 @__ip_vs_conn_put(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
