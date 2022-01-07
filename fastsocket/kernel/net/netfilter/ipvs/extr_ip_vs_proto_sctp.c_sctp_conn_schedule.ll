; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_conn_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_conn_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_service = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ip_vs_iphdr = type { i32, i32, i64 }

@SCTP_CID_INIT = common dso_local global i64 0, align 8
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, i32*, %struct.ip_vs_conn**)* @sctp_conn_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_conn_schedule(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_protocol* %2, i32* %3, %struct.ip_vs_conn** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_vs_protocol*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ip_vs_conn**, align 8
  %12 = alloca %struct.ip_vs_service*, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca %struct.ip_vs_iphdr, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ip_vs_conn** %4, %struct.ip_vs_conn*** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call i32 @skb_network_header(%struct.sk_buff* %19)
  %21 = call i32 @ip_vs_fill_iphdr(i32 %18, i32 %20, %struct.ip_vs_iphdr* %17)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %17, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.TYPE_5__* @skb_header_pointer(%struct.sk_buff* %22, i64 %24, i32 16, %struct.TYPE_5__* %16)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %15, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %27 = icmp eq %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %83

29:                                               ; preds = %5
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %17, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 16
  %34 = call %struct.TYPE_5__* @skb_header_pointer(%struct.sk_buff* %30, i64 %33, i32 16, %struct.TYPE_5__* %13)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %14, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %36 = icmp eq %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %83

38:                                               ; preds = %29
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SCTP_CID_INIT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %17, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %17, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.ip_vs_service* @ip_vs_service_get(i32 %45, i32 %48, i32 %50, i32* %51, i32 %54)
  store %struct.ip_vs_service* %55, %struct.ip_vs_service** %12, align 8
  %56 = icmp ne %struct.ip_vs_service* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %44
  %58 = call i64 (...) @ip_vs_todrop()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %62 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %61)
  %63 = load i32, i32* @NF_DROP, align 4
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %6, align 4
  br label %83

65:                                               ; preds = %57
  %66 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = call %struct.ip_vs_conn* @ip_vs_schedule(%struct.ip_vs_service* %66, %struct.sk_buff* %67)
  %69 = load %struct.ip_vs_conn**, %struct.ip_vs_conn*** %11, align 8
  store %struct.ip_vs_conn* %68, %struct.ip_vs_conn** %69, align 8
  %70 = load %struct.ip_vs_conn**, %struct.ip_vs_conn*** %11, align 8
  %71 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %70, align 8
  %72 = icmp ne %struct.ip_vs_conn* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %77 = call i32 @ip_vs_leave(%struct.ip_vs_service* %74, %struct.sk_buff* %75, %struct.ip_vs_protocol* %76)
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %6, align 4
  br label %83

79:                                               ; preds = %65
  %80 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %81 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %80)
  br label %82

82:                                               ; preds = %79, %44, %38
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %73, %60, %37, %28
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @ip_vs_fill_iphdr(i32, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @skb_header_pointer(%struct.sk_buff*, i64, i32, %struct.TYPE_5__*) #1

declare dso_local %struct.ip_vs_service* @ip_vs_service_get(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @ip_vs_todrop(...) #1

declare dso_local i32 @ip_vs_service_put(%struct.ip_vs_service*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_schedule(%struct.ip_vs_service*, %struct.sk_buff*) #1

declare dso_local i32 @ip_vs_leave(%struct.ip_vs_service*, %struct.sk_buff*, %struct.ip_vs_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
