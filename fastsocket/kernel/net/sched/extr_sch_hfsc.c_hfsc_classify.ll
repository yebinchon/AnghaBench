; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsc_class = type { i64, %struct.tcf_proto* }
%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.hfsc_sched = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tcf_proto* }
%struct.tcf_result = type { i32, i64 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hfsc_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @hfsc_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hfsc_class* @hfsc_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.hfsc_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hfsc_sched*, align 8
  %9 = alloca %struct.hfsc_class*, align 8
  %10 = alloca %struct.tcf_result, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.hfsc_sched* %14, %struct.hfsc_sched** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  %22 = call i64 @TC_H_MAJ(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %29 = call %struct.hfsc_class* @hfsc_find_class(i32 %27, %struct.Qdisc* %28)
  store %struct.hfsc_class* %29, %struct.hfsc_class** %9, align 8
  %30 = icmp ne %struct.hfsc_class* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %33 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  store %struct.hfsc_class* %37, %struct.hfsc_class** %4, align 8
  br label %103

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %24, %3
  %40 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %41 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %45 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.tcf_proto*, %struct.tcf_proto** %46, align 8
  store %struct.tcf_proto* %47, %struct.tcf_proto** %11, align 8
  br label %48

48:                                               ; preds = %78, %39
  %49 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %50 = icmp ne %struct.tcf_proto* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %54 = call i32 @tc_classify(%struct.sk_buff* %52, %struct.tcf_proto* %53, %struct.tcf_result* %10)
  store i32 %54, i32* %12, align 4
  %55 = icmp sge i32 %54, 0
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ false, %48 ], [ %55, %51 ]
  br i1 %57, label %58, label %82

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.hfsc_class*
  store %struct.hfsc_class* %61, %struct.hfsc_class** %9, align 8
  %62 = icmp eq %struct.hfsc_class* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %67 = call %struct.hfsc_class* @hfsc_find_class(i32 %65, %struct.Qdisc* %66)
  store %struct.hfsc_class* %67, %struct.hfsc_class** %9, align 8
  %68 = icmp eq %struct.hfsc_class* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %82

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %73 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  store %struct.hfsc_class* %77, %struct.hfsc_class** %4, align 8
  br label %103

78:                                               ; preds = %71
  %79 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %80 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %79, i32 0, i32 1
  %81 = load %struct.tcf_proto*, %struct.tcf_proto** %80, align 8
  store %struct.tcf_proto* %81, %struct.tcf_proto** %11, align 8
  br label %48

82:                                               ; preds = %69, %56
  %83 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %84 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @TC_H_MAJ(i32 %85)
  %87 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %88 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @TC_H_MAKE(i64 %86, i32 %89)
  %91 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %92 = call %struct.hfsc_class* @hfsc_find_class(i32 %90, %struct.Qdisc* %91)
  store %struct.hfsc_class* %92, %struct.hfsc_class** %9, align 8
  %93 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %94 = icmp eq %struct.hfsc_class* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %82
  %96 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %97 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %82
  store %struct.hfsc_class* null, %struct.hfsc_class** %4, align 8
  br label %103

101:                                              ; preds = %95
  %102 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  store %struct.hfsc_class* %102, %struct.hfsc_class** %4, align 8
  br label %103

103:                                              ; preds = %101, %100, %76, %36
  %104 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  ret %struct.hfsc_class* %104
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local %struct.hfsc_class* @hfsc_find_class(i32, %struct.Qdisc*) #1

declare dso_local i32 @tc_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*) #1

declare dso_local i32 @TC_H_MAKE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
