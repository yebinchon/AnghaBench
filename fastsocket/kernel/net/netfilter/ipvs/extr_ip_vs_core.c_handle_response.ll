; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_handle_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*)* }
%struct.ip_vs_conn = type opaque
%struct.ip_vs_conn.0 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Outgoing packet\00", align 1
@RTN_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"After SNAT\00", align 1
@IP_VS_DIR_OUTPUT = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn.0*, i32)* @handle_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_response(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_protocol* %2, %struct.ip_vs_conn.0* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_vs_protocol*, align 8
  %10 = alloca %struct.ip_vs_conn.0*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %9, align 8
  store %struct.ip_vs_conn.0* %3, %struct.ip_vs_conn.0** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = call i32 @IP_VS_DBG_PKT(i32 11, %struct.ip_vs_protocol* %12, %struct.sk_buff* %13, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @skb_make_writable(%struct.sk_buff* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %70

20:                                               ; preds = %5
  %21 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %22 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %21, i32 0, i32 0
  %23 = load i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*)*, i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*)** %22, align 8
  %24 = icmp ne i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %27 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %26, i32 0, i32 0
  %28 = load i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*)*, i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*)** %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %31 = load %struct.ip_vs_conn.0*, %struct.ip_vs_conn.0** %10, align 8
  %32 = bitcast %struct.ip_vs_conn.0* %31 to %struct.ip_vs_conn*
  %33 = call i32 %28(%struct.sk_buff* %29, %struct.ip_vs_protocol* %30, %struct.ip_vs_conn* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %70

36:                                               ; preds = %25, %20
  %37 = load %struct.ip_vs_conn.0*, %struct.ip_vs_conn.0** %10, align 8
  %38 = getelementptr inbounds %struct.ip_vs_conn.0, %struct.ip_vs_conn.0* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %44)
  %46 = call i32 @ip_send_check(%struct.TYPE_7__* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load i32, i32* @RTN_LOCAL, align 4
  %49 = call i64 @ip_route_me_harder(%struct.sk_buff* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %70

52:                                               ; preds = %36
  %53 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call i32 @IP_VS_DBG_PKT(i32 10, %struct.ip_vs_protocol* %53, %struct.sk_buff* %54, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.ip_vs_conn.0*, %struct.ip_vs_conn.0** %10, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @ip_vs_out_stats(%struct.ip_vs_conn.0* %56, %struct.sk_buff* %57)
  %59 = load %struct.ip_vs_conn.0*, %struct.ip_vs_conn.0** %10, align 8
  %60 = load i32, i32* @IP_VS_DIR_OUTPUT, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %63 = call i32 @ip_vs_set_state(%struct.ip_vs_conn.0* %59, i32 %60, %struct.sk_buff* %61, %struct.ip_vs_protocol* %62)
  %64 = load %struct.ip_vs_conn.0*, %struct.ip_vs_conn.0** %10, align 8
  %65 = call i32 @ip_vs_conn_put(%struct.ip_vs_conn.0* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = call i32 @LeaveFunction(i32 11)
  %69 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %69, i32* %6, align 4
  br label %76

70:                                               ; preds = %51, %35, %19
  %71 = load %struct.ip_vs_conn.0*, %struct.ip_vs_conn.0** %10, align 8
  %72 = call i32 @ip_vs_conn_put(%struct.ip_vs_conn.0* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @kfree_skb(%struct.sk_buff* %73)
  %75 = load i32, i32* @NF_STOLEN, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %70, %52
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @IP_VS_DBG_PKT(i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_send_check(%struct.TYPE_7__*) #1

declare dso_local i64 @ip_route_me_harder(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_vs_out_stats(%struct.ip_vs_conn.0*, %struct.sk_buff*) #1

declare dso_local i32 @ip_vs_set_state(%struct.ip_vs_conn.0*, i32, %struct.sk_buff*, %struct.ip_vs_protocol*) #1

declare dso_local i32 @ip_vs_conn_put(%struct.ip_vs_conn.0*) #1

declare dso_local i32 @LeaveFunction(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
