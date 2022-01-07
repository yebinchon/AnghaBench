; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_snat_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_snat_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)* }
%struct.ip_vs_conn = type { i64, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*)* @sctp_snat_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_snat_handler(%struct.sk_buff* %0, %struct.ip_vs_protocol* %1, %struct.ip_vs_conn* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_vs_protocol*, align 8
  %7 = alloca %struct.ip_vs_conn*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ip_vs_protocol* %1, %struct.ip_vs_protocol** %6, align 8
  store %struct.ip_vs_conn* %2, %struct.ip_vs_conn** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @ip_hdrlen(%struct.sk_buff* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* %9, align 4
  %14 = zext i32 %13 to i64
  %15 = add i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @skb_make_writable(%struct.sk_buff* %12, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %22 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %20
  %29 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %30 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %29, i32 0, i32 0
  %31 = load i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)*, i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)** %30, align 8
  %32 = icmp ne i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %35 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %34, i32 0, i32 0
  %36 = load i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)*, i32 (i64, %struct.sk_buff*, %struct.ip_vs_protocol*)** %35, align 8
  %37 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %38 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %42 = call i32 %36(i64 %39, %struct.sk_buff* %40, %struct.ip_vs_protocol* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %69

45:                                               ; preds = %33, %28
  %46 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @ip_vs_app_pkt_out(%struct.ip_vs_conn* %46, %struct.sk_buff* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %69

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %20
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i64 @skb_network_header(%struct.sk_buff* %53)
  %55 = inttoptr i64 %54 to i8*
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  %59 = bitcast i8* %58 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %59, %struct.TYPE_3__** %8, align 8
  %60 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %61 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @sctp_nat_csum(%struct.sk_buff* %65, %struct.TYPE_3__* %66, i32 %67)
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %52, %50, %44, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_vs_app_pkt_out(%struct.ip_vs_conn*, %struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @sctp_nat_csum(%struct.sk_buff*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
