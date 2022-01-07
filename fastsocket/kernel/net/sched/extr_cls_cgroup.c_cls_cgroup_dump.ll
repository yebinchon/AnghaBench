; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cls_cgroup_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cls_cgroup_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.cls_cgroup_head* }
%struct.cls_cgroup_head = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@cgroup_ext_map = common dso_local global i32 0, align 4
@TCA_CGROUP_EMATCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)* @cls_cgroup_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_cgroup_dump(%struct.tcf_proto* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.cls_cgroup_head*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nlattr*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %14 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %13, i32 0, i32 0
  %15 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  store %struct.cls_cgroup_head* %15, %struct.cls_cgroup_head** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call i8* @skb_tail_pointer(%struct.sk_buff* %16)
  store i8* %17, i8** %11, align 8
  %18 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %10, align 8
  %19 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %22 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load i32, i32* @TCA_OPTIONS, align 4
  %25 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %23, i32 %24)
  store %struct.nlattr* %25, %struct.nlattr** %12, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %27 = icmp eq %struct.nlattr* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %57

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %10, align 8
  %32 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %31, i32 0, i32 0
  %33 = call i64 @tcf_exts_dump(%struct.sk_buff* %30, i32* %32, i32* @cgroup_ext_map)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %10, align 8
  %38 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %37, i32 0, i32 1
  %39 = load i32, i32* @TCA_CGROUP_EMATCHES, align 4
  %40 = call i64 @tcf_em_tree_dump(%struct.sk_buff* %36, i32* %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %29
  br label %57

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %46 = call i32 @nla_nest_end(%struct.sk_buff* %44, %struct.nlattr* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %10, align 8
  %49 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %48, i32 0, i32 0
  %50 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %47, i32* %49, i32* @cgroup_ext_map)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %52, %42, %28
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @nlmsg_trim(%struct.sk_buff* %58, i8* %59)
  store i32 -1, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i64 @tcf_em_tree_dump(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @tcf_exts_dump_stats(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
