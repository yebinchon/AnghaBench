; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_cluster.c_xt_cluster_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_cluster.c_xt_cluster_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.nf_conn* }
%struct.sk_buff = type { i64 }
%struct.xt_match_param = type { i32, %struct.xt_cluster_match_info* }
%struct.xt_cluster_match_info = type { i32, i32 }

@PACKET_MULTICAST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@nf_conntrack_untracked = common dso_local global %struct.nf_conn zeroinitializer, align 8
@XT_CLUSTER_F_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @xt_cluster_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_cluster_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xt_cluster_match_info*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 1
  %14 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %13, align 8
  store %struct.xt_cluster_match_info* %14, %struct.xt_cluster_match_info** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %17 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @xt_cluster_is_multicast_addr(%struct.sk_buff* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PACKET_MULTICAST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* @PACKET_HOST, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %21, %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %32, i32* %9)
  store %struct.nf_conn* %33, %struct.nf_conn** %8, align 8
  %34 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %35 = icmp eq %struct.nf_conn* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %78

37:                                               ; preds = %31
  %38 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %39 = icmp eq %struct.nf_conn* %38, @nf_conntrack_untracked
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %78

41:                                               ; preds = %37
  %42 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %43 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %42, i32 0, i32 0
  %44 = load %struct.nf_conn*, %struct.nf_conn** %43, align 8
  %45 = icmp ne %struct.nf_conn* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %48 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %47, i32 0, i32 0
  %49 = load %struct.nf_conn*, %struct.nf_conn** %48, align 8
  %50 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %7, align 8
  %51 = call i64 @xt_cluster_hash(%struct.nf_conn* %49, %struct.xt_cluster_match_info* %50)
  store i64 %51, i64* %10, align 8
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %54 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %7, align 8
  %55 = call i64 @xt_cluster_hash(%struct.nf_conn* %53, %struct.xt_cluster_match_info* %54)
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i64, i64* %10, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 1, %58
  %60 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %7, align 8
  %61 = getelementptr inbounds %struct.xt_cluster_match_info, %struct.xt_cluster_match_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %7, align 8
  %69 = getelementptr inbounds %struct.xt_cluster_match_info, %struct.xt_cluster_match_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @XT_CLUSTER_F_INV, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = xor i32 %67, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %56, %40, %36
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @xt_cluster_is_multicast_addr(%struct.sk_buff*, i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @xt_cluster_hash(%struct.nf_conn*, %struct.xt_cluster_match_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
