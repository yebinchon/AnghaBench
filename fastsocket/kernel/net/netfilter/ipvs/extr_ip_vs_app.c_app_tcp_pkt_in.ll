; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_app_tcp_pkt_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_app_tcp_pkt_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_app = type { i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*)* }
%struct.tcphdr = type { i32 }

@IP_VS_CONN_F_IN_SEQ = common dso_local global i32 0, align 4
@IP_VS_CONN_F_OUT_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*, %struct.sk_buff*, %struct.ip_vs_app*)* @app_tcp_pkt_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @app_tcp_pkt_in(%struct.ip_vs_conn* %0, %struct.sk_buff* %1, %struct.ip_vs_app* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_app*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_app* %2, %struct.ip_vs_app** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i32 @ip_hdrlen(%struct.sk_buff* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @skb_make_writable(%struct.sk_buff* %14, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i64 @skb_network_header(%struct.sk_buff* %23)
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = inttoptr i64 %27 to %struct.tcphdr*
  store %struct.tcphdr* %28, %struct.tcphdr** %10, align 8
  %29 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohl(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %34 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IP_VS_CONN_F_IN_SEQ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %41 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %40, i32 0, i32 1
  %42 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %43 = call i32 @vs_fix_seq(i32* %41, %struct.tcphdr* %42)
  br label %44

44:                                               ; preds = %39, %22
  %45 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %46 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IP_VS_CONN_F_OUT_SEQ, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %53 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %52, i32 0, i32 2
  %54 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %55 = call i32 @vs_fix_ack_seq(i32* %53, %struct.tcphdr* %54)
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.ip_vs_app*, %struct.ip_vs_app** %7, align 8
  %58 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %57, i32 0, i32 0
  %59 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*)** %58, align 8
  %60 = icmp eq i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*)* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %84

62:                                               ; preds = %56
  %63 = load %struct.ip_vs_app*, %struct.ip_vs_app** %7, align 8
  %64 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %63, i32 0, i32 0
  %65 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*)** %64, align 8
  %66 = load %struct.ip_vs_app*, %struct.ip_vs_app** %7, align 8
  %67 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32 %65(%struct.ip_vs_app* %66, %struct.ip_vs_conn* %67, %struct.sk_buff* %68, i32* %8)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %84

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %77 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %78 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %77, i32 0, i32 1
  %79 = load i32, i32* @IP_VS_CONN_F_IN_SEQ, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @vs_seq_update(%struct.ip_vs_conn* %76, i32* %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %72
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %71, %61, %21
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @vs_fix_seq(i32*, %struct.tcphdr*) #1

declare dso_local i32 @vs_fix_ack_seq(i32*, %struct.tcphdr*) #1

declare dso_local i32 @vs_seq_update(%struct.ip_vs_conn*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
