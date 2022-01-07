; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_rule.c_ipt_dnat_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_rule.c_ipt_dnat_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { i64, %struct.nf_nat_multi_range_compat* }
%struct.nf_nat_multi_range_compat = type { i32* }
%struct.nf_conn = type { i32 }

@NF_INET_PRE_ROUTING = common dso_local global i64 0, align 8
@NF_INET_LOCAL_OUT = common dso_local global i64 0, align 8
@IP_CT_NEW = common dso_local global i32 0, align 4
@IP_CT_RELATED = common dso_local global i32 0, align 4
@IP_NAT_MANIP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @ipt_dnat_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipt_dnat_target(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_target_param*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_nat_multi_range_compat*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %4, align 8
  %8 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %9 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %8, i32 0, i32 1
  %10 = load %struct.nf_nat_multi_range_compat*, %struct.nf_nat_multi_range_compat** %9, align 8
  store %struct.nf_nat_multi_range_compat* %10, %struct.nf_nat_multi_range_compat** %7, align 8
  %11 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %12 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NF_INET_PRE_ROUTING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %18 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NF_INET_LOCAL_OUT, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i1 [ true, %2 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @NF_CT_ASSERT(i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %26, i32* %6)
  store %struct.nf_conn* %27, %struct.nf_conn** %5, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %29 = icmp ne %struct.nf_conn* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @IP_CT_NEW, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @IP_CT_RELATED, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ true, %30 ], [ %37, %34 ]
  br label %40

40:                                               ; preds = %38, %22
  %41 = phi i1 [ false, %22 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @NF_CT_ASSERT(i32 %42)
  %44 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %45 = load %struct.nf_nat_multi_range_compat*, %struct.nf_nat_multi_range_compat** %7, align 8
  %46 = getelementptr inbounds %struct.nf_nat_multi_range_compat, %struct.nf_nat_multi_range_compat* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* @IP_NAT_MANIP_DST, align 4
  %50 = call i32 @nf_nat_setup_info(%struct.nf_conn* %44, i32* %48, i32 %49)
  ret i32 %50
}

declare dso_local i32 @NF_CT_ASSERT(i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nf_nat_setup_info(%struct.nf_conn*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
