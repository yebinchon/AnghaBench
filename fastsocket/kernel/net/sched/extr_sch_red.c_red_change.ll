; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_red.c_red_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_red.c_red_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.red_sched_data = type { i64, i32, %struct.Qdisc*, i32 }
%struct.tc_red_qopt = type { i64, i32, i32, i32, i32, i32, i32 }

@TCA_RED_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@red_policy = common dso_local global i32 0, align 4
@TCA_RED_PARMS = common dso_local global i64 0, align 8
@TCA_RED_STAB = common dso_local global i64 0, align 8
@bfifo_qdisc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @red_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_change(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.red_sched_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tc_red_qopt*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.red_sched_data* %14, %struct.red_sched_data** %6, align 8
  %15 = load i32, i32* @TCA_RED_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca %struct.nlattr*, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %10, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %21 = icmp eq %struct.nlattr* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

25:                                               ; preds = %2
  %26 = load i32, i32* @TCA_RED_MAX, align 4
  %27 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %28 = load i32, i32* @red_policy, align 4
  %29 = call i32 @nla_parse_nested(%struct.nlattr** %19, i32 %26, %struct.nlattr* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

34:                                               ; preds = %25
  %35 = load i64, i64* @TCA_RED_PARMS, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp eq %struct.nlattr* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @TCA_RED_STAB, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp eq %struct.nlattr* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

47:                                               ; preds = %39
  %48 = load i64, i64* @TCA_RED_PARMS, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call %struct.tc_red_qopt* @nla_data(%struct.nlattr* %50)
  store %struct.tc_red_qopt* %51, %struct.tc_red_qopt** %9, align 8
  %52 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %9, align 8
  %53 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %47
  %57 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %58 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %9, align 8
  %59 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc* %57, i32* @bfifo_qdisc_ops, i64 %60)
  store %struct.Qdisc* %61, %struct.Qdisc** %10, align 8
  %62 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %63 = call i64 @IS_ERR(%struct.Qdisc* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %67 = call i32 @PTR_ERR(%struct.Qdisc* %66)
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %71 = call i32 @sch_tree_lock(%struct.Qdisc* %70)
  %72 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %9, align 8
  %73 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %76 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %9, align 8
  %78 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %81 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %83 = icmp ne %struct.Qdisc* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %69
  %85 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %86 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %85, i32 0, i32 2
  %87 = load %struct.Qdisc*, %struct.Qdisc** %86, align 8
  %88 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %89 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %88, i32 0, i32 2
  %90 = load %struct.Qdisc*, %struct.Qdisc** %89, align 8
  %91 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %87, i32 %93)
  %95 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %96 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %95, i32 0, i32 2
  %97 = load %struct.Qdisc*, %struct.Qdisc** %96, align 8
  %98 = call i32 @qdisc_destroy(%struct.Qdisc* %97)
  %99 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %100 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %101 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %100, i32 0, i32 2
  store %struct.Qdisc* %99, %struct.Qdisc** %101, align 8
  br label %102

102:                                              ; preds = %84, %69
  %103 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %104 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %103, i32 0, i32 1
  %105 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %9, align 8
  %106 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %9, align 8
  %109 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %9, align 8
  %112 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %9, align 8
  %115 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %9, align 8
  %118 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* @TCA_RED_STAB, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = call %struct.tc_red_qopt* @nla_data(%struct.nlattr* %122)
  %124 = call i32 @red_set_parms(i32* %104, i32 %107, i32 %110, i32 %113, i32 %116, i32 %119, %struct.tc_red_qopt* %123)
  %125 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %126 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %125, i32 0, i32 0
  %127 = call i64 @skb_queue_empty(%struct.TYPE_2__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %102
  %130 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %131 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %130, i32 0, i32 1
  %132 = call i32 @red_end_of_idle_period(i32* %131)
  br label %133

133:                                              ; preds = %129, %102
  %134 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %135 = call i32 @sch_tree_unlock(%struct.Qdisc* %134)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

136:                                              ; preds = %133, %65, %44, %32, %22
  %137 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #1

declare dso_local %struct.tc_red_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc*, i32*, i64) #1

declare dso_local i64 @IS_ERR(%struct.Qdisc*) #1

declare dso_local i32 @PTR_ERR(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

declare dso_local i32 @red_set_parms(i32*, i32, i32, i32, i32, i32, %struct.tc_red_qopt*) #1

declare dso_local i64 @skb_queue_empty(%struct.TYPE_2__*) #1

declare dso_local i32 @red_end_of_idle_period(i32*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
