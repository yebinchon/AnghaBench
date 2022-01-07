; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_netem_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_netem_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netem_sched_data = type { i32, i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.tc_netem_qopt = type { i32, i32, i64, i32, i32, i32 }

@TCA_NETEM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@netem_policy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"netem: can't set fifo limit\0A\00", align 1
@TCA_NETEM_CORR = common dso_local global i64 0, align 8
@TCA_NETEM_DELAY_DIST = common dso_local global i64 0, align 8
@TCA_NETEM_REORDER = common dso_local global i64 0, align 8
@TCA_NETEM_CORRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @netem_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netem_change(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.netem_sched_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tc_netem_qopt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.netem_sched_data* %13, %struct.netem_sched_data** %6, align 8
  %14 = load i32, i32* @TCA_NETEM_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %20 = icmp eq %struct.nlattr* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %138

24:                                               ; preds = %2
  %25 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %26 = call %struct.tc_netem_qopt* @nla_data(%struct.nlattr* %25)
  store %struct.tc_netem_qopt* %26, %struct.tc_netem_qopt** %9, align 8
  %27 = load i32, i32* @TCA_NETEM_MAX, align 4
  %28 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %29 = load i32, i32* @netem_policy, align 4
  %30 = call i32 @parse_attr(%struct.nlattr** %18, i32 %27, %struct.nlattr* %28, i32 %29, i32 32)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %138

35:                                               ; preds = %24
  %36 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %37 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %9, align 8
  %40 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @fifo_set_limit(i32 %38, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %138

48:                                               ; preds = %35
  %49 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %9, align 8
  %50 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %53 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %9, align 8
  %55 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %58 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %9, align 8
  %60 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %63 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %9, align 8
  %65 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %68 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %70 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %9, align 8
  %72 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %75 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %9, align 8
  %77 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %80 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %82 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %48
  %86 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %87 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %48
  %89 = load i64, i64* @TCA_NETEM_CORR, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %95 = load i64, i64* @TCA_NETEM_CORR, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = call i32 @get_correlation(%struct.Qdisc* %94, %struct.nlattr* %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i64, i64* @TCA_NETEM_DELAY_DIST, align 8
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = icmp ne %struct.nlattr* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %106 = load i64, i64* @TCA_NETEM_DELAY_DIST, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i32 @get_dist_table(%struct.Qdisc* %105, %struct.nlattr* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %138

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %99
  %116 = load i64, i64* @TCA_NETEM_REORDER, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %116
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = icmp ne %struct.nlattr* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %122 = load i64, i64* @TCA_NETEM_REORDER, align 8
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = call i32 @get_reorder(%struct.Qdisc* %121, %struct.nlattr* %124)
  br label %126

126:                                              ; preds = %120, %115
  %127 = load i64, i64* @TCA_NETEM_CORRUPT, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = icmp ne %struct.nlattr* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %133 = load i64, i64* @TCA_NETEM_CORRUPT, align 8
  %134 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %133
  %135 = load %struct.nlattr*, %struct.nlattr** %134, align 8
  %136 = call i32 @get_corrupt(%struct.Qdisc* %132, %struct.nlattr* %135)
  br label %137

137:                                              ; preds = %131, %126
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %138

138:                                              ; preds = %137, %112, %45, %33, %21
  %139 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.tc_netem_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @parse_attr(%struct.nlattr**, i32, %struct.nlattr*, i32, i32) #1

declare dso_local i32 @fifo_set_limit(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @get_correlation(%struct.Qdisc*, %struct.nlattr*) #1

declare dso_local i32 @get_dist_table(%struct.Qdisc*, %struct.nlattr*) #1

declare dso_local i32 @get_reorder(%struct.Qdisc*, %struct.nlattr*) #1

declare dso_local i32 @get_corrupt(%struct.Qdisc*, %struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
