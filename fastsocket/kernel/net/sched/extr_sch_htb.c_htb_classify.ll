; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_class = type { i64, %struct.tcf_proto* }
%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i64 }
%struct.Qdisc = type { i64 }
%struct.htb_sched = type { i32, %struct.tcf_proto* }
%struct.tcf_result = type { i64, i64 }

@HTB_DIRECT = common dso_local global %struct.htb_class* null, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.htb_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @htb_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.htb_class* @htb_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.htb_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.htb_sched*, align 8
  %9 = alloca %struct.htb_class*, align 8
  %10 = alloca %struct.tcf_result, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = call %struct.htb_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.htb_sched* %14, %struct.htb_sched** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.htb_class*, %struct.htb_class** @HTB_DIRECT, align 8
  store %struct.htb_class* %23, %struct.htb_class** %4, align 8
  br label %112

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %29 = call %struct.htb_class* @htb_find(i64 %27, %struct.Qdisc* %28)
  store %struct.htb_class* %29, %struct.htb_class** %9, align 8
  %30 = icmp ne %struct.htb_class* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %33 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  store %struct.htb_class* %37, %struct.htb_class** %4, align 8
  br label %112

38:                                               ; preds = %31, %24
  %39 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %40 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %44 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %43, i32 0, i32 1
  %45 = load %struct.tcf_proto*, %struct.tcf_proto** %44, align 8
  store %struct.tcf_proto* %45, %struct.tcf_proto** %11, align 8
  br label %46

46:                                               ; preds = %86, %38
  %47 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %48 = icmp ne %struct.tcf_proto* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %52 = call i32 @tc_classify(%struct.sk_buff* %50, %struct.tcf_proto* %51, %struct.tcf_result* %10)
  store i32 %52, i32* %12, align 4
  %53 = icmp sge i32 %52, 0
  br label %54

54:                                               ; preds = %49, %46
  %55 = phi i1 [ false, %46 ], [ %53, %49 ]
  br i1 %55, label %56, label %90

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = bitcast i8* %59 to %struct.htb_class*
  store %struct.htb_class* %60, %struct.htb_class** %9, align 8
  %61 = icmp eq %struct.htb_class* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %66 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load %struct.htb_class*, %struct.htb_class** @HTB_DIRECT, align 8
  store %struct.htb_class* %70, %struct.htb_class** %4, align 8
  br label %112

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %75 = call %struct.htb_class* @htb_find(i64 %73, %struct.Qdisc* %74)
  store %struct.htb_class* %75, %struct.htb_class** %9, align 8
  %76 = icmp eq %struct.htb_class* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %90

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %81 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  store %struct.htb_class* %85, %struct.htb_class** %4, align 8
  br label %112

86:                                               ; preds = %79
  %87 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %88 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %87, i32 0, i32 1
  %89 = load %struct.tcf_proto*, %struct.tcf_proto** %88, align 8
  store %struct.tcf_proto* %89, %struct.tcf_proto** %11, align 8
  br label %46

90:                                               ; preds = %77, %54
  %91 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %92 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @TC_H_MAJ(i64 %93)
  %95 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %96 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @TC_H_MAKE(i32 %94, i32 %97)
  %99 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %100 = call %struct.htb_class* @htb_find(i64 %98, %struct.Qdisc* %99)
  store %struct.htb_class* %100, %struct.htb_class** %9, align 8
  %101 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %102 = icmp ne %struct.htb_class* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %90
  %104 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %105 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %90
  %109 = load %struct.htb_class*, %struct.htb_class** @HTB_DIRECT, align 8
  store %struct.htb_class* %109, %struct.htb_class** %4, align 8
  br label %112

110:                                              ; preds = %103
  %111 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  store %struct.htb_class* %111, %struct.htb_class** %4, align 8
  br label %112

112:                                              ; preds = %110, %108, %84, %69, %36, %22
  %113 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  ret %struct.htb_class* %113
}

declare dso_local %struct.htb_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.htb_class* @htb_find(i64, %struct.Qdisc*) #1

declare dso_local i32 @tc_classify(%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*) #1

declare dso_local i64 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
