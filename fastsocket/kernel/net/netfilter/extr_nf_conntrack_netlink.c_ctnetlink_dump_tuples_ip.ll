; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_tuples_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_tuples_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_l3proto = type { i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)* }
%struct.nlattr = type { i32 }

@CTA_TUPLE_IP = common dso_local global i32 0, align 4
@NLA_F_NESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_l3proto*)* @ctnetlink_dump_tuples_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_tuples_ip(%struct.sk_buff* %0, %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_l3proto* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_l3proto*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_conntrack_l3proto* %2, %struct.nf_conntrack_l3proto** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @CTA_TUPLE_IP, align 4
  %12 = load i32, i32* @NLA_F_NESTED, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %10, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %9, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %7, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %19, i32 0, i32 0
  %21 = load i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)*, i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)** %20, align 8
  %22 = call i64 @likely(i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %7, align 8
  %26 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %25, i32 0, i32 0
  %27 = load i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)*, i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)** %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %30 = call i32 %27(%struct.sk_buff* %28, %struct.nf_conntrack_tuple* %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %34 = call i32 @nla_nest_end(%struct.sk_buff* %32, %struct.nlattr* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @likely(i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*)*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
