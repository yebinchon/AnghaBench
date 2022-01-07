; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_dump_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_dump_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nf_conntrack_tuple_mask = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nf_conntrack_l3proto = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 }
%struct.nlattr = type { i32 }

@CTA_EXPECT_MASK = common dso_local global i32 0, align 4
@NLA_F_NESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple_mask*)* @ctnetlink_exp_dump_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_exp_dump_mask(%struct.sk_buff* %0, %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple_mask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_tuple_mask*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conntrack_l3proto*, align 8
  %10 = alloca %struct.nf_conntrack_l4proto*, align 8
  %11 = alloca %struct.nf_conntrack_tuple, align 4
  %12 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_conntrack_tuple_mask* %2, %struct.nf_conntrack_tuple_mask** %7, align 8
  %13 = call i32 @memset(%struct.nf_conntrack_tuple* %11, i32 255, i32 16)
  %14 = load %struct.nf_conntrack_tuple_mask*, %struct.nf_conntrack_tuple_mask** %7, align 8
  %15 = getelementptr inbounds %struct.nf_conntrack_tuple_mask, %struct.nf_conntrack_tuple_mask* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %11, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %11, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.nf_conntrack_tuple_mask*, %struct.nf_conntrack_tuple_mask** %7, align 8
  %25 = getelementptr inbounds %struct.nf_conntrack_tuple_mask, %struct.nf_conntrack_tuple_mask* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @memcpy(i32* %23, i32* %26, i32 4)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @CTA_EXPECT_MASK, align 4
  %30 = load i32, i32* @NLA_F_NESTED, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %28, i32 %31)
  store %struct.nlattr* %32, %struct.nlattr** %12, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %74

36:                                               ; preds = %3
  %37 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %38 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i32 %40)
  store %struct.nf_conntrack_l3proto* %41, %struct.nf_conntrack_l3proto** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %9, align 8
  %44 = call i32 @ctnetlink_dump_tuples_ip(%struct.sk_buff* %42, %struct.nf_conntrack_tuple* %11, %struct.nf_conntrack_l3proto* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %74

51:                                               ; preds = %36
  %52 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %53 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %57 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32 %55, i32 %59)
  store %struct.nf_conntrack_l4proto* %60, %struct.nf_conntrack_l4proto** %10, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %10, align 8
  %63 = call i32 @ctnetlink_dump_tuples_proto(%struct.sk_buff* %61, %struct.nf_conntrack_tuple* %11, %struct.nf_conntrack_l4proto* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %74

70:                                               ; preds = %51
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %73 = call i32 @nla_nest_end(%struct.sk_buff* %71, %struct.nlattr* %72)
  store i32 0, i32* %4, align 4
  br label %75

74:                                               ; preds = %69, %50, %35
  store i32 -1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %70
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.nf_conntrack_tuple*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i32) #1

declare dso_local i32 @ctnetlink_dump_tuples_ip(%struct.sk_buff*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_l3proto*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32, i32) #1

declare dso_local i32 @ctnetlink_dump_tuples_proto(%struct.sk_buff*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_l4proto*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
