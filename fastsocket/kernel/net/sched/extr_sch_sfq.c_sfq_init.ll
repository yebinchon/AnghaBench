; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.sfq_sched_data = type { i32*, i32, i32, i32, i64, i32, i64, %struct.TYPE_3__*, i32*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@sfq_perturbation = common dso_local global i32 0, align 4
@SFQ_HASH_DIVISOR = common dso_local global i32 0, align 4
@SFQ_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @sfq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.sfq_sched_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.sfq_sched_data* %10, %struct.sfq_sched_data** %6, align 8
  %11 = load i32, i32* @sfq_perturbation, align 4
  %12 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %13 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %16 = ptrtoint %struct.Qdisc* %15 to i64
  %17 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %18 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %21 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %20, i32 0, i32 9
  %22 = call i32 @init_timer_deferrable(%struct.TYPE_4__* %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %35, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SFQ_HASH_DIVISOR, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* @SFQ_DEPTH, align 4
  %29 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %30 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %23

38:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %75, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SFQ_DEPTH, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %45 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @skb_queue_head_init(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SFQ_DEPTH, align 4
  %53 = add nsw i32 %51, %52
  %54 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %55 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %54, i32 0, i32 7
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SFQ_DEPTH, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %53, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SFQ_DEPTH, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %67 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %66, i32 0, i32 7
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @SFQ_DEPTH, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %65, i32* %74, align 4
  br label %75

75:                                               ; preds = %43
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %39

78:                                               ; preds = %39
  %79 = load i32, i32* @SFQ_DEPTH, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %82 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %84 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @SFQ_DEPTH, align 4
  %86 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %87 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %89 = icmp eq %struct.nlattr* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %78
  %91 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %92 = call i32 @qdisc_dev(%struct.Qdisc* %91)
  %93 = call i32 @psched_mtu(i32 %92)
  %94 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %95 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %97 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = call i32 (...) @net_random()
  %99 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %100 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  br label %110

101:                                              ; preds = %78
  %102 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %103 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %104 = call i32 @sfq_change(%struct.Qdisc* %102, %struct.nlattr* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %123

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %90
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %119, %110
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @SFQ_DEPTH, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @sfq_link(%struct.sfq_sched_data* %116, i32 %117)
  br label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %111

122:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %107
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @init_timer_deferrable(%struct.TYPE_4__*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @net_random(...) #1

declare dso_local i32 @sfq_change(%struct.Qdisc*, %struct.nlattr*) #1

declare dso_local i32 @sfq_link(%struct.sfq_sched_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
