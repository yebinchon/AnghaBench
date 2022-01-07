; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_classify_compat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_classify_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.tcf_proto = type { i64, i32 (%struct.sk_buff.0*, %struct.tcf_proto*, %struct.tcf_result*)*, %struct.tcf_proto* }
%struct.sk_buff.0 = type opaque
%struct.tcf_result = type { i32 }

@ETH_P_ALL = common dso_local global i32 0, align 4
@TC_ACT_RECLASSIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_classify_compat(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %42, %3
  %14 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %15 = icmp ne %struct.tcf_proto* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %18 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %24 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @ETH_P_ALL, align 4
  %27 = call i64 @htons(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %22, %16
  %30 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %31 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %30, i32 0, i32 1
  %32 = load i32 (%struct.sk_buff.0*, %struct.tcf_proto*, %struct.tcf_result*)*, i32 (%struct.sk_buff.0*, %struct.tcf_proto*, %struct.tcf_result*)** %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = bitcast %struct.sk_buff* %33 to %struct.sk_buff.0*
  %35 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %36 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %37 = call i32 %32(%struct.sk_buff.0* %34, %struct.tcf_proto* %35, %struct.tcf_result* %36)
  store i32 %37, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %29, %22
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %44 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %43, i32 0, i32 2
  %45 = load %struct.tcf_proto*, %struct.tcf_proto** %44, align 8
  store %struct.tcf_proto* %45, %struct.tcf_proto** %6, align 8
  br label %13

46:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
