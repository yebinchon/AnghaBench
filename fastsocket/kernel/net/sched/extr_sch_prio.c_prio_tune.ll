; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_prio.c_prio_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.prio_sched_data = type { i32, %struct.Qdisc**, i32 }
%struct.tc_prio_qopt = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@TCQ_PRIO_BANDS = common dso_local global i32 0, align 4
@TC_PRIO_MAX = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @prio_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_tune(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.prio_sched_data*, align 8
  %7 = alloca %struct.tc_prio_qopt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.prio_sched_data* %13, %struct.prio_sched_data** %6, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %15 = call i32 @nla_len(%struct.nlattr* %14)
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %184

21:                                               ; preds = %2
  %22 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %23 = call %struct.tc_prio_qopt* @nla_data(%struct.nlattr* %22)
  store %struct.tc_prio_qopt* %23, %struct.tc_prio_qopt** %7, align 8
  %24 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %7, align 8
  %25 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TCQ_PRIO_BANDS, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %7, align 8
  %31 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %184

37:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TC_PRIO_MAX, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %7, align 8
  %44 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %7, align 8
  %51 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %184

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %63 = call i32 @sch_tree_lock(%struct.Qdisc* %62)
  %64 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %7, align 8
  %65 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %68 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %70 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %7, align 8
  %73 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @TC_PRIO_MAX, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @memcpy(i32 %71, i32* %74, i32 %76)
  %78 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %79 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %111, %61
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @TCQ_PRIO_BANDS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %87 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %86, i32 0, i32 1
  %88 = load %struct.Qdisc**, %struct.Qdisc*** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %88, i64 %90
  %92 = load %struct.Qdisc*, %struct.Qdisc** %91, align 8
  store %struct.Qdisc* %92, %struct.Qdisc** %9, align 8
  %93 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %94 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %93, i32 0, i32 1
  %95 = load %struct.Qdisc**, %struct.Qdisc*** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %95, i64 %97
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %98, align 8
  %99 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %100 = icmp ne %struct.Qdisc* %99, @noop_qdisc
  br i1 %100, label %101, label %110

101:                                              ; preds = %85
  %102 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %103 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %104 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %102, i32 %106)
  %108 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %109 = call i32 @qdisc_destroy(%struct.Qdisc* %108)
  br label %110

110:                                              ; preds = %101, %85
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %81

114:                                              ; preds = %81
  %115 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %116 = call i32 @sch_tree_unlock(%struct.Qdisc* %115)
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %180, %114
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %120 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %183

123:                                              ; preds = %117
  %124 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %125 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %124, i32 0, i32 1
  %126 = load %struct.Qdisc**, %struct.Qdisc*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %126, i64 %128
  %130 = load %struct.Qdisc*, %struct.Qdisc** %129, align 8
  %131 = icmp eq %struct.Qdisc* %130, @noop_qdisc
  br i1 %131, label %132, label %179

132:                                              ; preds = %123
  %133 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %134 = call i32 @qdisc_dev(%struct.Qdisc* %133)
  %135 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %136 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %139 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i32 @TC_H_MAKE(i32 %140, i32 %142)
  %144 = call %struct.Qdisc* @qdisc_create_dflt(i32 %134, i32 %137, i32* @pfifo_qdisc_ops, i32 %143)
  store %struct.Qdisc* %144, %struct.Qdisc** %10, align 8
  %145 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %146 = icmp ne %struct.Qdisc* %145, null
  br i1 %146, label %147, label %178

147:                                              ; preds = %132
  %148 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %149 = call i32 @sch_tree_lock(%struct.Qdisc* %148)
  %150 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %151 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %150, i32 0, i32 1
  %152 = load %struct.Qdisc**, %struct.Qdisc*** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %152, i64 %154
  %156 = load %struct.Qdisc*, %struct.Qdisc** %155, align 8
  store %struct.Qdisc* %156, %struct.Qdisc** %11, align 8
  %157 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %158 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %159 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %158, i32 0, i32 1
  %160 = load %struct.Qdisc**, %struct.Qdisc*** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %160, i64 %162
  store %struct.Qdisc* %157, %struct.Qdisc** %163, align 8
  %164 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %165 = icmp ne %struct.Qdisc* %164, @noop_qdisc
  br i1 %165, label %166, label %175

166:                                              ; preds = %147
  %167 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %168 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %169 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %167, i32 %171)
  %173 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %174 = call i32 @qdisc_destroy(%struct.Qdisc* %173)
  br label %175

175:                                              ; preds = %166, %147
  %176 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %177 = call i32 @sch_tree_unlock(%struct.Qdisc* %176)
  br label %178

178:                                              ; preds = %175, %132
  br label %179

179:                                              ; preds = %178, %123
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %117

183:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %54, %34, %18
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.tc_prio_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
