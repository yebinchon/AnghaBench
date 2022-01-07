; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_l3proto_ipv6.c_ipv6_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_l3proto_ipv6.c_ipv6_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_helper = type { i32 (%struct.sk_buff*, i32, %struct.nf_conn.0*, i32)*, i32 }
%struct.nf_conn.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@IP_CT_RELATED = common dso_local global i32 0, align 4
@IP_CT_IS_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"proto header not found\0A\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"nf_ct_%s: dropping packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @ipv6_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_confirm(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca %struct.nf_conn_help*, align 8
  %14 = alloca %struct.nf_conntrack_helper*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %20, i32* %15)
  store %struct.nf_conn* %21, %struct.nf_conn** %12, align 8
  %22 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %23 = icmp ne %struct.nf_conn* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @IP_CT_RELATED, align 4
  %27 = load i32, i32* @IP_CT_IS_REPLY, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %5
  br label %87

31:                                               ; preds = %24
  %32 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %33 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %32)
  store %struct.nf_conn_help* %33, %struct.nf_conn_help** %13, align 8
  %34 = load %struct.nf_conn_help*, %struct.nf_conn_help** %13, align 8
  %35 = icmp ne %struct.nf_conn_help* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %87

37:                                               ; preds = %31
  %38 = load %struct.nf_conn_help*, %struct.nf_conn_help** %13, align 8
  %39 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.nf_conntrack_helper* @rcu_dereference(i32 %40)
  store %struct.nf_conntrack_helper* %41, %struct.nf_conntrack_helper** %14, align 8
  %42 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %14, align 8
  %43 = icmp ne %struct.nf_conntrack_helper* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %87

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %19, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call i32 @ipv6_skip_exthdr_fragoff(%struct.sk_buff* %50, i32 4, i32* %19, i32* %17)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @htons(i32 -8)
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %45
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %61, i32* %6, align 4
  br label %90

62:                                               ; preds = %54
  %63 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %14, align 8
  %64 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %63, i32 0, i32 0
  %65 = load i32 (%struct.sk_buff*, i32, %struct.nf_conn.0*, i32)*, i32 (%struct.sk_buff*, i32, %struct.nf_conn.0*, i32)** %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %69 = bitcast %struct.nf_conn* %68 to %struct.nf_conn.0*
  %70 = load i32, i32* %15, align 4
  %71 = call i32 %65(%struct.sk_buff* %66, i32 %67, %struct.nf_conn.0* %69, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @NF_ACCEPT, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %62
  %76 = load i32, i32* @NFPROTO_IPV6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = load %struct.net_device*, %struct.net_device** %9, align 8
  %80 = load %struct.net_device*, %struct.net_device** %10, align 8
  %81 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %14, align 8
  %82 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @nf_log_packet(i32 %76, i32 %77, %struct.sk_buff* %78, %struct.net_device* %79, %struct.net_device* %80, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %6, align 4
  br label %90

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %86, %44, %36, %30
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @nf_conntrack_confirm(%struct.sk_buff* %88)
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %75, %59
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_skip_exthdr_fragoff(%struct.sk_buff*, i32, i32*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32*, i8*, i32) #1

declare dso_local i32 @nf_conntrack_confirm(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
