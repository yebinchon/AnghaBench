; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_new_expect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_new_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_expect = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CTA_EXPECT_TUPLE = common dso_local global i64 0, align 8
@CTA_EXPECT_MASK = common dso_local global i64 0, align 8
@CTA_EXPECT_MASTER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nf_conntrack_lock = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ctnetlink_new_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_new_expect(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nf_conntrack_tuple, align 4
  %11 = alloca %struct.nf_conntrack_expect*, align 8
  %12 = alloca %struct.nfgenmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  %16 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %17 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %16)
  store %struct.nfgenmsg* %17, %struct.nfgenmsg** %12, align 8
  %18 = load %struct.nfgenmsg*, %struct.nfgenmsg** %12, align 8
  %19 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %22 = load i64, i64* @CTA_EXPECT_TUPLE, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %28 = load i64, i64* @CTA_EXPECT_MASK, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %34 = load i64, i64* @CTA_EXPECT_MASTER, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %26, %4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %94

41:                                               ; preds = %32
  %42 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %43 = load i64, i64* @CTA_EXPECT_TUPLE, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %42, %struct.nf_conntrack_tuple* %10, i64 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %94

50:                                               ; preds = %41
  %51 = call i32 @spin_lock_bh(i32* @nf_conntrack_lock)
  %52 = call %struct.nf_conntrack_expect* @__nf_ct_expect_find(i32* @init_net, %struct.nf_conntrack_tuple* %10)
  store %struct.nf_conntrack_expect* %52, %struct.nf_conntrack_expect** %11, align 8
  %53 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %54 = icmp ne %struct.nf_conntrack_expect* %53, null
  br i1 %54, label %78, label %55

55:                                               ; preds = %50
  %56 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  %59 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %60 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NLM_F_CREATE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @NETLINK_CB(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %74 = call i32 @nlmsg_report(%struct.nlmsghdr* %73)
  %75 = call i32 @ctnetlink_create_expect(%struct.nlattr** %66, i32 %67, i32 %72, i32 %74)
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %65, %55
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %5, align 4
  br label %94

78:                                               ; preds = %50
  %79 = load i32, i32* @EEXIST, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %14, align 4
  %81 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %82 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NLM_F_EXCL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %78
  %88 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %89 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %90 = call i32 @ctnetlink_change_expect(%struct.nf_conntrack_expect* %88, %struct.nlattr** %89)
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %87, %78
  %92 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %76, %48, %38
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.nf_conntrack_expect* @__nf_ct_expect_find(i32*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ctnetlink_create_expect(%struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_report(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_change_expect(%struct.nf_conntrack_expect*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
