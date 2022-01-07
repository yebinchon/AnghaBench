; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_multiq.c_multiq_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_multiq.c_multiq_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.multiq_sched_data = type { i32, i32, %struct.Qdisc** }
%struct.tc_multiq_qopt = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @multiq_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq_tune(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.multiq_sched_data*, align 8
  %7 = alloca %struct.tc_multiq_qopt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.multiq_sched_data* %13, %struct.multiq_sched_data** %6, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = call %struct.TYPE_6__* @qdisc_dev(%struct.Qdisc* %14)
  %16 = call i32 @netif_is_multiqueue(%struct.TYPE_6__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %159

21:                                               ; preds = %2
  %22 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %23 = call i32 @nla_len(%struct.nlattr* %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %159

29:                                               ; preds = %21
  %30 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %31 = call %struct.tc_multiq_qopt* @nla_data(%struct.nlattr* %30)
  store %struct.tc_multiq_qopt* %31, %struct.tc_multiq_qopt** %7, align 8
  %32 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %33 = call %struct.TYPE_6__* @qdisc_dev(%struct.Qdisc* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tc_multiq_qopt*, %struct.tc_multiq_qopt** %7, align 8
  %37 = getelementptr inbounds %struct.tc_multiq_qopt, %struct.tc_multiq_qopt* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %39 = call i32 @sch_tree_lock(%struct.Qdisc* %38)
  %40 = load %struct.tc_multiq_qopt*, %struct.tc_multiq_qopt** %7, align 8
  %41 = getelementptr inbounds %struct.tc_multiq_qopt, %struct.tc_multiq_qopt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %44 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %46 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %86, %29
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %51 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %48
  %55 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %56 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %55, i32 0, i32 2
  %57 = load %struct.Qdisc**, %struct.Qdisc*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %57, i64 %59
  %61 = load %struct.Qdisc*, %struct.Qdisc** %60, align 8
  %62 = icmp ne %struct.Qdisc* %61, @noop_qdisc
  br i1 %62, label %63, label %85

63:                                               ; preds = %54
  %64 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %65 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %64, i32 0, i32 2
  %66 = load %struct.Qdisc**, %struct.Qdisc*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %66, i64 %68
  %70 = load %struct.Qdisc*, %struct.Qdisc** %69, align 8
  store %struct.Qdisc* %70, %struct.Qdisc** %9, align 8
  %71 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %72 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %71, i32 0, i32 2
  %73 = load %struct.Qdisc**, %struct.Qdisc*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %73, i64 %75
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %76, align 8
  %77 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %78 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %79 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %77, i32 %81)
  %83 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %84 = call i32 @qdisc_destroy(%struct.Qdisc* %83)
  br label %85

85:                                               ; preds = %63, %54
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %48

89:                                               ; preds = %48
  %90 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %91 = call i32 @sch_tree_unlock(%struct.Qdisc* %90)
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %155, %89
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %95 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %158

98:                                               ; preds = %92
  %99 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %100 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %99, i32 0, i32 2
  %101 = load %struct.Qdisc**, %struct.Qdisc*** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %101, i64 %103
  %105 = load %struct.Qdisc*, %struct.Qdisc** %104, align 8
  %106 = icmp eq %struct.Qdisc* %105, @noop_qdisc
  br i1 %106, label %107, label %154

107:                                              ; preds = %98
  %108 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %109 = call %struct.TYPE_6__* @qdisc_dev(%struct.Qdisc* %108)
  %110 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %111 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %114 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 @TC_H_MAKE(i32 %115, i32 %117)
  %119 = call %struct.Qdisc* @qdisc_create_dflt(%struct.TYPE_6__* %109, i32 %112, i32* @pfifo_qdisc_ops, i32 %118)
  store %struct.Qdisc* %119, %struct.Qdisc** %10, align 8
  %120 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %121 = icmp ne %struct.Qdisc* %120, null
  br i1 %121, label %122, label %153

122:                                              ; preds = %107
  %123 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %124 = call i32 @sch_tree_lock(%struct.Qdisc* %123)
  %125 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %126 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %125, i32 0, i32 2
  %127 = load %struct.Qdisc**, %struct.Qdisc*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %127, i64 %129
  %131 = load %struct.Qdisc*, %struct.Qdisc** %130, align 8
  store %struct.Qdisc* %131, %struct.Qdisc** %11, align 8
  %132 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %133 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %134 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %133, i32 0, i32 2
  %135 = load %struct.Qdisc**, %struct.Qdisc*** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %135, i64 %137
  store %struct.Qdisc* %132, %struct.Qdisc** %138, align 8
  %139 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %140 = icmp ne %struct.Qdisc* %139, @noop_qdisc
  br i1 %140, label %141, label %150

141:                                              ; preds = %122
  %142 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %143 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %144 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %142, i32 %146)
  %148 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %149 = call i32 @qdisc_destroy(%struct.Qdisc* %148)
  br label %150

150:                                              ; preds = %141, %122
  %151 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %152 = call i32 @sch_tree_unlock(%struct.Qdisc* %151)
  br label %153

153:                                              ; preds = %150, %107
  br label %154

154:                                              ; preds = %153, %98
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %92

158:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %26, %18
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @netif_is_multiqueue(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.tc_multiq_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
