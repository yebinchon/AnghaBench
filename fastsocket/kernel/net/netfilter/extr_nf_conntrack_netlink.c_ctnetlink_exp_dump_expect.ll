; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_dump_expect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_dump_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i32, i32, %struct.TYPE_3__, %struct.nf_conn* }
%struct.TYPE_3__ = type { i64 }
%struct.nf_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CTA_EXPECT_TUPLE = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@CTA_EXPECT_MASTER = common dso_local global i32 0, align 4
@CTA_EXPECT_TIMEOUT = common dso_local global i32 0, align 4
@CTA_EXPECT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conntrack_expect*)* @ctnetlink_exp_dump_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_exp_dump_expect(%struct.sk_buff* %0, %struct.nf_conntrack_expect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conntrack_expect*, align 8
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_expect** %5, align 8
  %8 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %5, align 8
  %9 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %8, i32 0, i32 3
  %10 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  store %struct.nf_conn* %10, %struct.nf_conn** %6, align 8
  %11 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %5, align 8
  %12 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load i64, i64* @HZ, align 8
  %18 = sdiv i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %5, align 8
  %25 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %24, i32 0, i32 1
  %26 = load i32, i32* @CTA_EXPECT_TUPLE, align 4
  %27 = call i64 @ctnetlink_exp_dump_tuple(%struct.sk_buff* %23, i32* %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %63

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %5, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %32, i32 0, i32 1
  %34 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %5, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %34, i32 0, i32 0
  %36 = call i64 @ctnetlink_exp_dump_mask(%struct.sk_buff* %31, i32* %33, i32* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %63

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %42 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* @CTA_EXPECT_MASTER, align 4
  %48 = call i64 @ctnetlink_exp_dump_tuple(%struct.sk_buff* %40, i32* %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %63

51:                                               ; preds = %39
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* @CTA_EXPECT_TIMEOUT, align 4
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @htonl(i64 %54)
  %56 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %52, i32 %53, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* @CTA_EXPECT_ID, align 4
  %59 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %5, align 8
  %60 = ptrtoint %struct.nf_conntrack_expect* %59 to i64
  %61 = call i32 @htonl(i64 %60)
  %62 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %57, i32 %58, i32 %61)
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %50, %38, %29
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @ctnetlink_exp_dump_tuple(%struct.sk_buff*, i32*, i32) #1

declare dso_local i64 @ctnetlink_exp_dump_mask(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @NLA_PUT_BE32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
