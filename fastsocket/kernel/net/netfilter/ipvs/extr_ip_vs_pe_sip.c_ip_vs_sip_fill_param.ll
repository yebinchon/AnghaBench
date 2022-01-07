; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_pe_sip.c_ip_vs_sip_fill_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_pe_sip.c_ip_vs_sip_fill_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn_param = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i8* }
%struct.ip_vs_iphdr = type { i64, i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)* @ip_vs_sip_fill_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_sip_fill_param(%struct.ip_vs_conn_param* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_conn_param*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_vs_iphdr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ip_vs_conn_param* %0, %struct.ip_vs_conn_param** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %14 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @skb_network_header(%struct.sk_buff* %16)
  %18 = call i32 @ip_vs_fill_iphdr(i32 %15, i32 %17, %struct.ip_vs_iphdr* %6)
  %19 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_UDP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %92

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp uge i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %92

40:                                               ; preds = %26
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_linearize(%struct.sk_buff* %41)
  store i32 %42, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %3, align 4
  br label %92

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %11, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @get_callid(i8* %58, i32 %59, i32 %60, i32* %9, i32* %10)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %46
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %92

66:                                               ; preds = %46
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call i32 @kmalloc(i32 %67, i32 %68)
  %70 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %71 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %73 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %92

79:                                               ; preds = %66
  %80 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %81 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @memcpy(i32 %82, i8* %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %91 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %79, %76, %63, %44, %37, %23
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @ip_vs_fill_iphdr(i32, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @get_callid(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
