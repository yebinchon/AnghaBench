; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nlattr = type { i32 }

@IPS_EXPECTED = common dso_local global i32 0, align 4
@CTA_TUPLE_MASTER = common dso_local global i32 0, align 4
@NLA_F_NESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*)* @ctnetlink_dump_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_master(%struct.sk_buff* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %7 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %8 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IPS_EXPECTED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @CTA_TUPLE_MASTER, align 4
  %17 = load i32, i32* @NLA_F_NESTED, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %15, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %6, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %26 = call i32 @master_tuple(%struct.nf_conn* %25)
  %27 = call i64 @ctnetlink_dump_tuples(%struct.sk_buff* %24, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %33 = call i32 @nla_nest_end(%struct.sk_buff* %31, %struct.nlattr* %32)
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; preds = %29, %22
  store i32 -1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %30, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @ctnetlink_dump_tuples(%struct.sk_buff*, i32) #1

declare dso_local i32 @master_tuple(%struct.nf_conn*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
