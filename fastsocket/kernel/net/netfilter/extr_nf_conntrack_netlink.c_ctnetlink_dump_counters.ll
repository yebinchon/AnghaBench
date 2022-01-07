; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conn_counter = type { i32, i32 }

@CTA_COUNTERS_REPLY = common dso_local global i32 0, align 4
@CTA_COUNTERS_ORIG = common dso_local global i32 0, align 4
@NLA_F_NESTED = common dso_local global i32 0, align 4
@CTA_COUNTERS_PACKETS = common dso_local global i32 0, align 4
@CTA_COUNTERS_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32)* @ctnetlink_dump_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_counters(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nf_conn_counter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @CTA_COUNTERS_REPLY, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @CTA_COUNTERS_ORIG, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %20 = call %struct.nf_conn_counter* @nf_conn_acct_find(%struct.nf_conn* %19)
  store %struct.nf_conn_counter* %20, %struct.nf_conn_counter** %10, align 8
  %21 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %10, align 8
  %22 = icmp ne %struct.nf_conn_counter* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %58

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @NLA_F_NESTED, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %25, i32 %28)
  store %struct.nlattr* %29, %struct.nlattr** %9, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %57

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* @CTA_COUNTERS_PACKETS, align 4
  %36 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %36, i64 %38
  %40 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_be64(i32 %41)
  %43 = call i32 @NLA_PUT_BE64(%struct.sk_buff* %34, i32 %35, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i32, i32* @CTA_COUNTERS_BYTES, align 4
  %46 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %46, i64 %48
  %50 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cpu_to_be64(i32 %51)
  %53 = call i32 @NLA_PUT_BE64(%struct.sk_buff* %44, i32 %45, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %56 = call i32 @nla_nest_end(%struct.sk_buff* %54, %struct.nlattr* %55)
  store i32 0, i32* %4, align 4
  br label %58

57:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %33, %23
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.nf_conn_counter* @nf_conn_acct_find(%struct.nf_conn*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_BE64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
