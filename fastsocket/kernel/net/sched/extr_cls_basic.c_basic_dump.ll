; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_basic.c_basic_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_basic.c_basic_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.basic_filter = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_BASIC_CLASSID = common dso_local global i32 0, align 4
@basic_ext_map = common dso_local global i32 0, align 4
@TCA_BASIC_EMATCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, %struct.sk_buff*, %struct.tcmsg*)* @basic_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basic_dump(%struct.tcf_proto* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.basic_filter*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.basic_filter*
  store %struct.basic_filter* %13, %struct.basic_filter** %10, align 8
  %14 = load %struct.basic_filter*, %struct.basic_filter** %10, align 8
  %15 = icmp eq %struct.basic_filter* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %71

20:                                               ; preds = %4
  %21 = load %struct.basic_filter*, %struct.basic_filter** %10, align 8
  %22 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %25 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load i32, i32* @TCA_OPTIONS, align 4
  %28 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %26, i32 %27)
  store %struct.nlattr* %28, %struct.nlattr** %11, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %30 = icmp eq %struct.nlattr* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %67

32:                                               ; preds = %20
  %33 = load %struct.basic_filter*, %struct.basic_filter** %10, align 8
  %34 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load i32, i32* @TCA_BASIC_CLASSID, align 4
  %41 = load %struct.basic_filter*, %struct.basic_filter** %10, align 8
  %42 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @NLA_PUT_U32(%struct.sk_buff* %39, i32 %40, i64 %44)
  br label %46

46:                                               ; preds = %38, %32
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load %struct.basic_filter*, %struct.basic_filter** %10, align 8
  %49 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %48, i32 0, i32 1
  %50 = call i64 @tcf_exts_dump(%struct.sk_buff* %47, i32* %49, i32* @basic_ext_map)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load %struct.basic_filter*, %struct.basic_filter** %10, align 8
  %55 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %54, i32 0, i32 0
  %56 = load i32, i32* @TCA_BASIC_EMATCHES, align 4
  %57 = call i64 @tcf_em_tree_dump(%struct.sk_buff* %53, i32* %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52, %46
  br label %67

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %63 = call i32 @nla_nest_end(%struct.sk_buff* %61, %struct.nlattr* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %59, %31
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %70 = call i32 @nla_nest_cancel(%struct.sk_buff* %68, %struct.nlattr* %69)
  store i32 -1, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %60, %16
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i64 @tcf_em_tree_dump(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
