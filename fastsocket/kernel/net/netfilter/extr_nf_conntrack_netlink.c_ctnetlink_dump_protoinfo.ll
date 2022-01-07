; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_protoinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_protoinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)* }
%struct.nlattr = type { i32 }
%struct.nf_conn.0 = type opaque

@CTA_PROTOINFO = common dso_local global i32 0, align 4
@NLA_F_NESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*)* @ctnetlink_dump_protoinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_protoinfo(%struct.sk_buff* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conntrack_l4proto*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %9 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %10 = call i32 @nf_ct_l3num(%struct.nf_conn* %9)
  %11 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %12 = call i32 @nf_ct_protonum(%struct.nf_conn* %11)
  %13 = call %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32 %10, i32 %12)
  store %struct.nf_conntrack_l4proto* %13, %struct.nf_conntrack_l4proto** %6, align 8
  %14 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %6, align 8
  %15 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %14, i32 0, i32 0
  %16 = load i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)*, i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)** %15, align 8
  %17 = icmp ne i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @CTA_PROTOINFO, align 4
  %22 = load i32, i32* @NLA_F_NESTED, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %20, i32 %23)
  store %struct.nlattr* %24, %struct.nlattr** %7, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %41

28:                                               ; preds = %19
  %29 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %6, align 8
  %30 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %29, i32 0, i32 0
  %31 = load i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)*, i32 (%struct.sk_buff*, %struct.nlattr*, %struct.nf_conn.0*)** %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %34 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %35 = bitcast %struct.nf_conn* %34 to %struct.nf_conn.0*
  %36 = call i32 %31(%struct.sk_buff* %32, %struct.nlattr* %33, %struct.nf_conn.0* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %39 = call i32 @nla_nest_end(%struct.sk_buff* %37, %struct.nlattr* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %28, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32, i32) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
