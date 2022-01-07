; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_ovl_delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_ovl_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cbq_sched_data = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@__QDISC_STATE_DEACTIVATED = common dso_local global i32 0, align 4
@TC_CBQ_MAXPRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*)* @cbq_ovl_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_ovl_delay(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca %struct.cbq_sched_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cbq_class* %0, %struct.cbq_class** %2, align 8
  %7 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %8 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.cbq_sched_data* @qdisc_priv(i32 %9)
  store %struct.cbq_sched_data* %10, %struct.cbq_sched_data** %3, align 8
  %11 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %15 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @__QDISC_STATE_DEACTIVATED, align 4
  %19 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %20 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_4__* @qdisc_root_sleeping(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %18, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %159

27:                                               ; preds = %1
  %28 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %29 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %144, label %32

32:                                               ; preds = %27
  %33 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %34 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %37 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %44 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %32
  %48 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %49 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 0, %50
  %52 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %53 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 0, %54
  %56 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %57 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %55, %58
  %60 = sub nsw i32 %51, %59
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %47, %32
  %64 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %65 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %68 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %73 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %76 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %71, %63
  %78 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %79 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %84 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %143

87:                                               ; preds = %77
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %91 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %100 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @TC_CBQ_MAXPRIO, align 4
  %102 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %103 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @TC_CBQ_MAXPRIO, align 4
  %105 = shl i32 1, %104
  %106 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %107 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = call i32 @ktime_set(i32 0, i32 0)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @PSCHED_TICKS2NS(i32 %112)
  %114 = call i32 @ktime_add_ns(i32 %111, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %116 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %115, i32 0, i32 3
  %117 = call i64 @hrtimer_try_to_cancel(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %87
  %120 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %121 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %120, i32 0, i32 3
  %122 = call i32 @hrtimer_get_expires(i32* %121)
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @ktime_sub(i32 %122, i32 %123)
  %125 = call i64 @ktime_to_ns(i32 %124)
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %129 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %128, i32 0, i32 3
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @hrtimer_set_expires(i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %119, %87
  %133 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %134 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %133, i32 0, i32 3
  %135 = call i32 @hrtimer_restart(i32* %134)
  %136 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %137 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  %138 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %139 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %159

143:                                              ; preds = %77
  store i32 1, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %27
  %145 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %146 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %151 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149, %144
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %158 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %26, %132, %155, %149
  ret void
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @qdisc_root_sleeping(i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @PSCHED_TICKS2NS(i32) #1

declare dso_local i64 @hrtimer_try_to_cancel(i32*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @hrtimer_get_expires(i32*) #1

declare dso_local i32 @hrtimer_set_expires(i32*, i32) #1

declare dso_local i32 @hrtimer_restart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
