; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, %struct.cbq_class**, i32 }
%struct.sk_buff = type { i64 }
%struct.Qdisc = type { i64 }
%struct.cbq_sched_data = type { %struct.cbq_class }
%struct.tcf_result = type { i64, i64 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@TC_PRIO_MAX = common dso_local global i64 0, align 8
@TC_PRIO_BESTEFFORT = common dso_local global i64 0, align 8
@__NET_XMIT_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cbq_class* (%struct.sk_buff*, %struct.Qdisc*, i32*)* @cbq_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cbq_class* @cbq_classify(%struct.sk_buff* %0, %struct.Qdisc* %1, i32* %2) #0 {
  %4 = alloca %struct.cbq_class*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cbq_sched_data*, align 8
  %9 = alloca %struct.cbq_class*, align 8
  %10 = alloca %struct.cbq_class**, align 8
  %11 = alloca %struct.cbq_class*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tcf_result, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %16 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %15)
  store %struct.cbq_sched_data* %16, %struct.cbq_sched_data** %8, align 8
  %17 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %18 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %17, i32 0, i32 0
  store %struct.cbq_class* %18, %struct.cbq_class** %9, align 8
  store %struct.cbq_class* null, %struct.cbq_class** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %24 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = xor i64 %22, %25
  %27 = call i64 @TC_H_MAJ(i64 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %30, i64 %31)
  store %struct.cbq_class* %32, %struct.cbq_class** %11, align 8
  %33 = icmp ne %struct.cbq_class* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %35, %struct.cbq_class** %4, align 8
  br label %137

36:                                               ; preds = %29, %3
  %37 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %38 = load i32, i32* @__NET_XMIT_BYPASS, align 4
  %39 = or i32 %37, %38
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %108, %36
  store i32 0, i32* %14, align 4
  %42 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %43 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %42, i32 0, i32 1
  %44 = load %struct.cbq_class**, %struct.cbq_class*** %43, align 8
  store %struct.cbq_class** %44, %struct.cbq_class*** %10, align 8
  %45 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %46 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %52 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @tc_classify_compat(%struct.sk_buff* %50, i32 %53, %struct.tcf_result* %13)
  store i32 %54, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %41
  br label %110

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %13, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = bitcast i8* %60 to %struct.cbq_class*
  store %struct.cbq_class* %61, %struct.cbq_class** %11, align 8
  %62 = icmp eq %struct.cbq_class* %61, null
  br i1 %62, label %63, label %101

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @TC_H_MAJ(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %70 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %13, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %69, i64 %71)
  store %struct.cbq_class* %72, %struct.cbq_class** %11, align 8
  br label %88

73:                                               ; preds = %63
  %74 = load %struct.cbq_class**, %struct.cbq_class*** %10, align 8
  %75 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %13, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TC_PRIO_MAX, align 8
  %78 = and i64 %76, %77
  %79 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %74, i64 %78
  %80 = load %struct.cbq_class*, %struct.cbq_class** %79, align 8
  store %struct.cbq_class* %80, %struct.cbq_class** %11, align 8
  %81 = icmp eq %struct.cbq_class* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.cbq_class**, %struct.cbq_class*** %10, align 8
  %84 = load i64, i64* @TC_PRIO_BESTEFFORT, align 8
  %85 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %83, i64 %84
  %86 = load %struct.cbq_class*, %struct.cbq_class** %85, align 8
  store %struct.cbq_class* %86, %struct.cbq_class** %11, align 8
  br label %87

87:                                               ; preds = %82, %73
  br label %88

88:                                               ; preds = %87, %68
  %89 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  %90 = icmp eq %struct.cbq_class* %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  %93 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %96 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %88
  br label %110

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %57
  %102 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  %103 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %107, %struct.cbq_class** %4, align 8
  br label %137

108:                                              ; preds = %101
  %109 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %109, %struct.cbq_class** %9, align 8
  br label %41

110:                                              ; preds = %99, %56
  %111 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  store %struct.cbq_class* %111, %struct.cbq_class** %11, align 8
  %112 = load i64, i64* %12, align 8
  %113 = call i64 @TC_H_MAJ(i64 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %110
  %116 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %117 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %116, i32 0, i32 1
  %118 = load %struct.cbq_class**, %struct.cbq_class*** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @TC_PRIO_MAX, align 8
  %121 = and i64 %119, %120
  %122 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %118, i64 %121
  %123 = load %struct.cbq_class*, %struct.cbq_class** %122, align 8
  store %struct.cbq_class* %123, %struct.cbq_class** %11, align 8
  %124 = icmp ne %struct.cbq_class* %123, null
  br i1 %124, label %135, label %125

125:                                              ; preds = %115
  %126 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %127 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %126, i32 0, i32 1
  %128 = load %struct.cbq_class**, %struct.cbq_class*** %127, align 8
  %129 = load i64, i64* @TC_PRIO_BESTEFFORT, align 8
  %130 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %128, i64 %129
  %131 = load %struct.cbq_class*, %struct.cbq_class** %130, align 8
  store %struct.cbq_class* %131, %struct.cbq_class** %11, align 8
  %132 = icmp ne %struct.cbq_class* %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %125
  %134 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  store %struct.cbq_class* %134, %struct.cbq_class** %4, align 8
  br label %137

135:                                              ; preds = %125, %115, %110
  %136 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %136, %struct.cbq_class** %4, align 8
  br label %137

137:                                              ; preds = %135, %133, %106, %34
  %138 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  ret %struct.cbq_class* %138
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data*, i64) #1

declare dso_local i32 @tc_classify_compat(%struct.sk_buff*, i32, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
