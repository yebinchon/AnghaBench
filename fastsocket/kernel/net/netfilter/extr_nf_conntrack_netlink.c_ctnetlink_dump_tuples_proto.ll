; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_tuples_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_tuples_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)* }
%struct.nlattr = type { i32 }

@CTA_TUPLE_PROTO = common dso_local global i32 0, align 4
@NLA_F_NESTED = common dso_local global i32 0, align 4
@CTA_PROTO_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_l4proto*)* @ctnetlink_dump_tuples_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_tuples_proto(%struct.sk_buff* %0, %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_l4proto* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_l4proto*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_conntrack_l4proto* %2, %struct.nf_conntrack_l4proto** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @CTA_TUPLE_PROTO, align 4
  %12 = load i32, i32* @NLA_F_NESTED, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %10, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %9, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* @CTA_PROTO_NUM, align 4
  %21 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %22 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @NLA_PUT_U8(%struct.sk_buff* %19, i32 %20, i32 %24)
  %26 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %7, align 8
  %27 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %26, i32 0, i32 0
  %28 = load i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)*, i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)** %27, align 8
  %29 = call i64 @likely(i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %7, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %32, i32 0, i32 0
  %34 = load i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)*, i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)** %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %37 = call i32 %34(%struct.sk_buff* %35, %struct.nf_conntrack_tuple* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %31, %18
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %41 = call i32 @nla_nest_end(%struct.sk_buff* %39, %struct.nlattr* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @likely(i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
