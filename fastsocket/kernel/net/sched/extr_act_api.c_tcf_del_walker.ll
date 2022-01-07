; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_del_walker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_del_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tcf_hashinfo = type { i32, %struct.tcf_common** }
%struct.tcf_common = type { %struct.tcf_common* }
%struct.nlattr = type { i32 }

@TCA_KIND = common dso_local global i32 0, align 4
@ACT_P_DELETED = common dso_local global i64 0, align 8
@TCA_FCNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_hashinfo*)* @tcf_del_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_del_walker(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_hashinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_hashinfo*, align 8
  %8 = alloca %struct.tcf_common*, align 8
  %9 = alloca %struct.tcf_common*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_hashinfo* %2, %struct.tcf_hashinfo** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %15 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %13, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %10, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %19 = icmp eq %struct.nlattr* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %84

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load i32, i32* @TCA_KIND, align 4
  %24 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %25 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %22, i32 %23, i32 %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %72, %21
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %7, align 8
  %33 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %30
  %38 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %7, align 8
  %39 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %38, i32 0, i32 1
  %40 = load %struct.tcf_common**, %struct.tcf_common*** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %7, align 8
  %43 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @tcf_hash(i32 %41, i32 %44)
  %46 = getelementptr inbounds %struct.tcf_common*, %struct.tcf_common** %40, i64 %45
  %47 = load %struct.tcf_common*, %struct.tcf_common** %46, align 8
  store %struct.tcf_common* %47, %struct.tcf_common** %8, align 8
  br label %48

48:                                               ; preds = %67, %37
  %49 = load %struct.tcf_common*, %struct.tcf_common** %8, align 8
  %50 = icmp ne %struct.tcf_common* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.tcf_common*, %struct.tcf_common** %8, align 8
  %53 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %52, i32 0, i32 0
  %54 = load %struct.tcf_common*, %struct.tcf_common** %53, align 8
  store %struct.tcf_common* %54, %struct.tcf_common** %9, align 8
  %55 = load i64, i64* @ACT_P_DELETED, align 8
  %56 = load %struct.tcf_common*, %struct.tcf_common** %8, align 8
  %57 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %7, align 8
  %58 = call i64 @tcf_hash_release(%struct.tcf_common* %56, i32 0, %struct.tcf_hashinfo* %57)
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %62 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @module_put(i32 %65)
  br label %67

67:                                               ; preds = %60, %51
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  store %struct.tcf_common* %70, %struct.tcf_common** %8, align 8
  br label %48

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %30

75:                                               ; preds = %30
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* @TCA_FCNT, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @NLA_PUT_U32(%struct.sk_buff* %76, i32 %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %82 = call i32 @nla_nest_end(%struct.sk_buff* %80, %struct.nlattr* %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %90

84:                                               ; preds = %20
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %87 = call i32 @nla_nest_cancel(%struct.sk_buff* %85, %struct.nlattr* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %75
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @tcf_hash(i32, i32) #1

declare dso_local i64 @tcf_hash_release(%struct.tcf_common*, i32, %struct.tcf_hashinfo*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
