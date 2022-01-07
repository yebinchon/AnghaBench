; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_police* }
%struct.tcf_police = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tc_police = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TCA_POLICE_TBF = common dso_local global i32 0, align 4
@TCA_POLICE_RESULT = common dso_local global i32 0, align 4
@TCA_POLICE_AVRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_act_police_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_act_police_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_police*, align 8
  %12 = alloca %struct.tc_police, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i8* @skb_tail_pointer(%struct.sk_buff* %13)
  store i8* %14, i8** %10, align 8
  %15 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %16 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %15, i32 0, i32 0
  %17 = load %struct.tcf_police*, %struct.tcf_police** %16, align 8
  store %struct.tcf_police* %17, %struct.tcf_police** %11, align 8
  %18 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 2
  %21 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %22 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %20, align 4
  %26 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 3
  %27 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %28 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %26, align 4
  %32 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 4
  %33 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %34 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 5
  %37 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %38 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 6
  %41 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %42 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 7
  %45 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %46 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %44, align 4
  %48 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %49 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = icmp ne %struct.TYPE_3__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %4
  %53 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %54 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %4
  %60 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %61 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %66 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.tc_police, %struct.tc_police* %12, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %59
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load i32, i32* @TCA_POLICE_TBF, align 4
  %74 = call i32 @NLA_PUT(%struct.sk_buff* %72, i32 %73, i32 32, %struct.tc_police* %12)
  %75 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %76 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load i32, i32* @TCA_POLICE_RESULT, align 4
  %82 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %83 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @NLA_PUT_U32(%struct.sk_buff* %80, i32 %81, i64 %84)
  br label %86

86:                                               ; preds = %79, %71
  %87 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %88 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = load i32, i32* @TCA_POLICE_AVRATE, align 4
  %94 = load %struct.tcf_police*, %struct.tcf_police** %11, align 8
  %95 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @NLA_PUT_U32(%struct.sk_buff* %92, i32 %93, i64 %96)
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %5, align 4
  br label %106

102:                                              ; No predecessors!
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @nlmsg_trim(%struct.sk_buff* %103, i8* %104)
  store i32 -1, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_police*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
